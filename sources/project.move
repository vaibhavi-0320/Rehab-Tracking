module MyModule::RehabTracking {

    use aptos_framework::signer;

    /// Struct to track rehab progress for a patient.
    struct RehabRecord has key, store {
        completed_sessions: u64,   // Number of sessions completed
        total_sessions: u64,       // Total sessions prescribed
    }

    /// Function to register a patient with a rehab plan.
    public fun register_patient(account: &signer, total_sessions: u64) {
        let record = RehabRecord {
            completed_sessions: 0,
            total_sessions,
        };
        move_to(account, record);
    }

    /// Function to mark a session as completed by the patient.
    public fun complete_session(account: &signer) acquires RehabRecord {
        let record = borrow_global_mut<RehabRecord>(signer::address_of(account));
        assert!(record.completed_sessions < record.total_sessions, 1);

        record.completed_sessions = record.completed_sessions + 1;
    }
}
