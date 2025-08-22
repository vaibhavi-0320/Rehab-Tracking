# Remote Rehabilitation Tracking Smart Contract

A decentralized solution for monitoring and tracking physical therapy and rehabilitation progress on the Aptos blockchain.

## 🏥 Overview

This Move smart contract enables healthcare providers and patients to securely track rehabilitation progress in a transparent, immutable manner. Designed for telemedicine applications, it offers essential functions for creating patient profiles and tracking therapy progress.

## ✨ Features

- **Patient Profile Creation** - Initialize rehabilitation plans with custom therapy types and session targets
- **Progress Tracking** - Update session counts and auto-calculate completion percentages
- **Timestamping** - Track when sessions occur for better monitoring
- **Completion Detection** - Automatically mark rehabilitation as complete when targets are met
- **Decentralized** - No central authority required, data stored on Aptos blockchain

## 🔧 Functions

### `create_rehab_profile(patient, therapy_type, target_sessions)`
Creates a new rehabilitation profile for a patient.

**Parameters:**
- `patient`: Signer reference (patient's account)
- `therapy_type`: Vector<u8> (e.g., "knee_rehab", "shoulder_therapy")
- `target_sessions`: u64 (number of sessions needed for recovery)

### `update_progress(therapist, patient_addr, sessions_completed)`
Updates patient progress after therapy sessions.

**Parameters:**
- `therapist`: Signer reference (healthcare provider's account)
- `patient_addr`: Address of the patient
- `sessions_completed`: u64 (number of sessions completed)

## 📊 Data Structure

```move
struct RehabProfile {
    patient_id: address,           // Patient identifier
    therapy_type: vector<u8>,      // Type of therapy
    total_sessions: u64,           // Sessions completed
    target_sessions: u64,          // Sessions required
    progress_percentage: u64,      // Progress (0-100%)
    last_session_timestamp: u64,   // Last session time
    is_completed: bool,            // Completion status
}
```

## 🚀 Getting Started

### Prerequisites
- [Aptos CLI](https://aptos.dev/tools/aptos-cli/)
- Move development environment

### Deployment
1. Clone this repository
2. Compile the contract:
   ```bash
   aptos move compile
   ```
3. Deploy to Aptos testnet/mainnet:
   ```bash
   aptos move publish
   ```

### Usage Example
```move
// Create a rehabilitation profile
create_rehab_profile(&patient_signer, b"knee_rehab", 20);

// Update progress after sessions
update_progress(&therapist_signer, patient_address, 2);
```

## 🛡️ Security Features

- Profile existence validation
- Progress bounds checking
- Immutable session history
- Timestamp verification

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

Contract Address

Testnet Deployment
Transaction Address:0xd76c9e800c188c4f129f76cf97d150744e37e6e9c65c5f46b4a1114e619fedae

Network: Aptos Testnet


---

**Built for the future of decentralized healthcare** 🏥⛓️
