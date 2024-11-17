module BlockchainTicketResalePlatform::TicketMarket {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Error codes
    const ERROR_TICKET_NOT_EXISTS: u64 = 1;
    const ERROR_INSUFFICIENT_PAYMENT: u64 = 2;
    const ERROR_TICKET_ALREADY_LISTED: u64 = 3;

    /// Struct representing a ticket listing
    struct TicketListing has store, key {
        ticket_id: u64,
        price: u64,
        seller: address,
        is_available: bool,
    }

    /// Function to list a ticket for sale
    public fun list_ticket(
        seller: &signer,
        ticket_id: u64,
        price: u64
    ) {
        let seller_addr = signer::address_of(seller);
        
        let ticket = TicketListing {
            ticket_id,
            price,
            seller: seller_addr,
            is_available: true,
        };
        
        assert!(!exists<TicketListing>(seller_addr), ERROR_TICKET_ALREADY_LISTED);
        move_to(seller, ticket);
    }

    /// Function to purchase a listed ticket
    public fun purchase_ticket(
        buyer: &signer,
        seller_address: address
    ) acquires TicketListing {
        let ticket = borrow_global_mut<TicketListing>(seller_address);
        
        assert!(ticket.is_available, ERROR_TICKET_NOT_EXISTS);
        
        // Process payment
        let payment = coin::withdraw<AptosCoin>(buyer, ticket.price);
        coin::deposit(seller_address, payment);
        
        // Mark ticket as sold
        ticket.is_available = false;
    }
}