module hello_world::transcript {
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;

    struct TranscriptObject has key {
        id: UID,
        history: u8,
        math: u8,
        literature: u8,
    }

    public entry fun create_transcript_object(history: u8, math: u8,literature: u8, ctx: &mut TxContext) {
        let transcriptObject = TranscriptObject { id: object::new(ctx), history, math, literature};
        // transfer::transfer(transcriptObject, tx_context::sender(ctx))
        // https://docs.sui.io/concepts/object-ownership/immutable#create-immutable-object
        // transfer::freeze_object(transcriptObject);
        // https://docs.sui.io/concepts/object-ownership/shared
        transfer::share_object(transcriptObject);
    }

    // struct Transcript {
    //     history: u8,
    //     math: u8,
    //     literature: u8,
    // }
}
