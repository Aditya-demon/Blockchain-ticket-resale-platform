# Blockchain Ticket Resale Platform

## Introduction
The Blockchain Ticket Resale Platform is a decentralized application (dApp) built on the Aptos blockchain that enables secure and transparent ticket reselling. This smart contract provides a trustless environment for users to list and purchase event tickets, eliminating common issues in the traditional ticket resale market such as fraud, scalping, and lack of transparency.

## Vision
Our platform aims to revolutionize the secondary ticket market by:
- Creating a fair and transparent marketplace for ticket resales
- Eliminating counterfeit tickets through blockchain verification
- Reducing scalping and price manipulation
- Ensuring secure transactions between buyers and sellers
- Providing an immutable record of ticket ownership and transfers

## Core Features
- **Secure Ticket Listing**: Sellers can list their tickets with unique IDs and set prices
- **Direct Peer-to-Peer Trading**: Buyers can purchase tickets directly from sellers
- **Automated Payments**: Built-in payment processing using AptosCoin
- **Ownership Verification**: Blockchain-based proof of ticket ownership
- **Status Tracking**: Real-time tracking of ticket availability

## Future Goals
1. **Short-term Goals (Q2 2024)**
   - Implement ticket transfer functionality
   - Add event-based tracking for ticket sales
   - Introduce multi-ticket listing capability
   - Develop price cap mechanisms to prevent excessive markups

2. **Medium-term Goals (Q3-Q4 2024)**
   - Integration with major event platforms
   - Mobile app development
   - Implementation of dynamic pricing algorithms
   - Addition of buyer reputation system

3. **Long-term Goals (2025 and beyond)**
   - Cross-chain ticket transfer capabilities
   - AI-powered fraud detection
   - Integration with virtual event platforms
   - Global marketplace expansion

## Technical Details

### Deployed Contract Address
```
0x100fadf144140e5ea1898f28af297720edfc6ca77cd3cd27b3b4f851c71bb252
```

### Smart Contract Structure
- `TicketListing`: Core struct for ticket information
- `list_ticket`: Function for creating new ticket listings
- `purchase_ticket`: Function for buying listed tickets

### Error Codes
- `ERROR_TICKET_NOT_EXISTS` (1): Ticket not found or already sold
- `ERROR_INSUFFICIENT_PAYMENT` (2): Buyer's payment is insufficient
- `ERROR_TICKET_ALREADY_LISTED` (3): Duplicate ticket listing attempt

## Getting Started
1. Ensure you have an Aptos-compatible wallet
2. Hold sufficient APT tokens for transactions
3. Connect to the contract using the deployed address
4. Use the provided functions to list or purchase tickets

## Security Considerations
- All transactions are immutable and cannot be reversed
- Verify ticket details before purchase
- Ensure sufficient funds for transaction fees
- Double-check seller addresses before sending payments

## Contributing
We welcome contributions to improve the platform. Please submit pull requests or open issues for any bugs or feature suggestions.
