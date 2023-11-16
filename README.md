# Hello world

## 实操

```shell
~/Code/sui via 🅒 base
➜
sui move new hello_world

~/Code/sui via 🅒 base
➜
ls
SuiStartrek dapp        hello_world

~/Code/sui via 🅒 base
➜
cd hello_world/

Code/sui/hello_world via 🅒 base
➜
c # code .

Code/sui/hello_world via 🅒 base 
➜ touch sources/hello_world.move

Code/sui/hello_world via 🅒 base 
➜ sui move build          
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING hello_world


Code/sui/hello_world via 🅒 base took 4.6s 
➜ sui move build                                                      
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING hello_world
warning[Lint W01001]: non-composable transfer to sender
   ┌─ ./sources/hello_world.move:22:9
   │
17 │     public entry fun mint(ctx: &mut TxContext) {
   │                      ---- Returning an object from a function, allows a caller to use the object and enables composability via programmable transactions.
   ·
22 │         transfer::transfer(object, tx_context::sender(ctx));
   │         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   │         │                          │
   │         │                          Transaction sender address coming from here
   │         Transfer of an object to transaction sender address in function mint
   │
   = This warning can be suppressed with '#[lint_allow(self_transfer)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Please report feedback on the linter warnings at https://forums.sui.io


Code/sui/hello_world via 🅒 base took 44.4s 
➜ sui client publish --gas-budget 1000000                             
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING hello_world
warning[Lint W01001]: non-composable transfer to sender
   ┌─ ./sources/hello_world.move:22:9
   │
17 │     public entry fun mint(ctx: &mut TxContext) {
   │                      ---- Returning an object from a function, allows a caller to use the object and enables composability via programmable transactions.
   ·
22 │         transfer::transfer(object, tx_context::sender(ctx));
   │         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   │         │                          │
   │         │                          Transaction sender address coming from here
   │         Transfer of an object to transaction sender address in function mint
   │
   = This warning can be suppressed with '#[lint_allow(self_transfer)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Please report feedback on the linter warnings at https://forums.sui.io

Successfully verified dependencies on-chain against source.
Error executing transaction: Failure {
    error: "InsufficientGas",
}

Code/sui/hello_world via 🅒 base took 6.1s 
➜ sui client publish --gas-budget 100000000        
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING hello_world
warning[Lint W01001]: non-composable transfer to sender
   ┌─ ./sources/hello_world.move:22:9
   │
17 │     public entry fun mint(ctx: &mut TxContext) {
   │                      ---- Returning an object from a function, allows a caller to use the object and enables composability via programmable transactions.
   ·
22 │         transfer::transfer(object, tx_context::sender(ctx));
   │         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   │         │                          │
   │         │                          Transaction sender address coming from here
   │         Transfer of an object to transaction sender address in function mint
   │
   = This warning can be suppressed with '#[lint_allow(self_transfer)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Please report feedback on the linter warnings at https://forums.sui.io

Successfully verified dependencies on-chain against source.
----- Transaction Digest ----
KMoNQEFcpwvAFcmEmu5nMz9iKUSfBy6u4raunMU9N5B
╭─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                                                                            │
├─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73                                                                                  │
│ Gas Owner: 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73                                                                               │
│ Gas Budget: 100000000                                                                                                                                       │
│ Gas Price: 1000                                                                                                                                             │
│ Gas Payment:                                                                                                                                                │
│  ┌──                                                                                                                                                        │
│  │ ID: 0x012caa4fdc1870f67c658d2e562f94775fae0c3b9cc92ca332782747c40bf0ae                                                                                   │
│  │ Version: 32                                                                                                                                              │
│  │ Digest: AtgBPuPbcVJyYUabzFiVTR43mAHSwrHjcFCQPfpR5SZa                                                                                                     │
│  └──                                                                                                                                                        │
│                                                                                                                                                             │
│ Transaction Kind : Programmable                                                                                                                             │
│ Inputs: [Pure(SuiPureValue { value_type: Some(Address), value: "0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73" })]                     │
│ Commands: [                                                                                                                                                 │
│   Publish(<modules>,0x0000000000000000000000000000000000000000000000000000000000000001,0x0000000000000000000000000000000000000000000000000000000000000002), │
│   TransferObjects([Result(0)],Input(0)),                                                                                                                    │
│ ]                                                                                                                                                           │
│                                                                                                                                                             │
│                                                                                                                                                             │
│ Signatures:                                                                                                                                                 │
│    CAAvQ9if4XeCftwUIfxQDbVek+CP57IzimChzzSr4BMptYi2kl8rLFyz/qtEUW/We3ZVs/rgtoVXAPB8T57SDw==                                                                 │
│                                                                                                                                                             │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: KMoNQEFcpwvAFcmEmu5nMz9iKUSfBy6u4raunMU9N5B                                               │
│ Status: Success                                                                                   │
│ Executed Epoch: 2                                                                                 │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x1d26b3043875fde33b18174b054a2610204572782373003b006f1eae4c3d9150                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: 7xqJ7m1iFYywAX3GsgeFDQWDENSDT7mLcUamhFeRcDXV                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xf61bb89ac3b6bb43b59b628f525b637d19b6057fd35123d6de5e596705606617                         │
│  │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )  │
│  │ Version: 33                                                                                    │
│  │ Digest: 3nHmsBBPmqMP7XRdL3kFQ2JjACuBLRoZn4JXRYL6AhpU                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x012caa4fdc1870f67c658d2e562f94775fae0c3b9cc92ca332782747c40bf0ae                         │
│  │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )  │
│  │ Version: 33                                                                                    │
│  │ Digest: 8ZCE2yKarL9yrgWMNJsEwzJb4MBfqJrGGzFtPm7m6LaC                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x012caa4fdc1870f67c658d2e562f94775fae0c3b9cc92ca332782747c40bf0ae                         │
│  │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )  │
│  │ Version: 33                                                                                    │
│  │ Digest: 8ZCE2yKarL9yrgWMNJsEwzJb4MBfqJrGGzFtPm7m6LaC                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 7835600                                                                          │
│    Computation Cost: 1000000                                                                      │
│    Storage Rebate: 978120                                                                         │
│    Non-refundable Storage Fee: 9880                                                               │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    GWc8TAiW6nGWZ8khic2X5qcuZUVvffx67MaVZCa4B2Lg                                                   │
│    HUKvecodFjttC4143fQ7LKpCNEwswvq8QyLJHiN8bJBg                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
----- Events ----
Array []
----- Object changes ----

Created Objects: 
 ┌──
 │ ObjectID: 0xf61bb89ac3b6bb43b59b628f525b637d19b6057fd35123d6de5e596705606617
 │ Sender: 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 
 │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )
 │ ObjectType: 0x2::package::UpgradeCap 
 │ Version: 33
 │ Digest: 3nHmsBBPmqMP7XRdL3kFQ2JjACuBLRoZn4JXRYL6AhpU
 └──

Mutated Objects: 
 ┌──
 │ ObjectID: 0x012caa4fdc1870f67c658d2e562f94775fae0c3b9cc92ca332782747c40bf0ae
 │ Sender: 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 
 │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )
 │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI> 
 │ Version: 33
 │ Digest: 8ZCE2yKarL9yrgWMNJsEwzJb4MBfqJrGGzFtPm7m6LaC
 └──

Published Objects: 
 ┌──
 │ PackageID: 0x1d26b3043875fde33b18174b054a2610204572782373003b006f1eae4c3d9150 
 │ Version: 1 
 │ Digest: 7xqJ7m1iFYywAX3GsgeFDQWDENSDT7mLcUamhFeRcDXV
 | Modules: hello_world
 └──
----- Balance changes ----
 ┌──
 │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 ) 
 │ CoinType: 0x2::sui::SUI 
 │ Amount: -7857480
 └──

Code/sui/hello_world via 🅒 base took 6.2s 
➜ touch README.md

Code/sui/hello_world via 🅒 base took 2.2s 
➜ export PACKAGE_ID=0x1d26b3043875fde33b18174b054a2610204572782373003b006f1eae4c3d9150                                                                  
Code/sui/hello_world via 🅒 base took 3.2s 
➜ sui client call --function mint --module hello_world --package $PACKAGE_ID --gas-budget 10000000
----- Transaction Digest ----
4BAXyf2tQ4sGuA7XbaxJ3LsuYs8SejQDUzG1VzSVif2P
╭──────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                     │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73                           │
│ Gas Owner: 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73                        │
│ Gas Budget: 10000000                                                                                 │
│ Gas Price: 1000                                                                                      │
│ Gas Payment:                                                                                         │
│  ┌──                                                                                                 │
│  │ ID: 0x012caa4fdc1870f67c658d2e562f94775fae0c3b9cc92ca332782747c40bf0ae                            │
│  │ Version: 34                                                                                       │
│  │ Digest: 7DYdSE2Z3LPsp1evRwpagSE13Q8nQhAPmMjPPy2WD2d1                                              │
│  └──                                                                                                 │
│                                                                                                      │
│ Transaction Kind : Programmable                                                                      │
│ Inputs: []                                                                                           │
│ Commands: [                                                                                          │
│   MoveCall(0x1d26b3043875fde33b18174b054a2610204572782373003b006f1eae4c3d9150::hello_world::mint()), │
│ ]                                                                                                    │
│                                                                                                      │
│                                                                                                      │
│ Signatures:                                                                                          │
│    KWAiH11wh/IzqVK+aQB84icwAIPQs2CG/yq/WeDgcwchr/97Dea8jtx0Jp70icW4lFSBOuOIxm1Uclz6Nb10DQ==          │
│                                                                                                      │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 4BAXyf2tQ4sGuA7XbaxJ3LsuYs8SejQDUzG1VzSVif2P                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 2                                                                                 │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x86b76752f57a77b232ee033e04de11e0adb8ebc5fd2b2e1dcedc2d35e92bedbd                         │
│  │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )  │
│  │ Version: 35                                                                                    │
│  │ Digest: CBvmHv1DdKFRkLk1A5iNd4dHHGzuaPR34tVHioUkpass                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x012caa4fdc1870f67c658d2e562f94775fae0c3b9cc92ca332782747c40bf0ae                         │
│  │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )  │
│  │ Version: 35                                                                                    │
│  │ Digest: 5cSwQdZCtZ7oeV62XyBwKd2x7stkCzJjFxLJzwrAri1D                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x012caa4fdc1870f67c658d2e562f94775fae0c3b9cc92ca332782747c40bf0ae                         │
│  │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )  │
│  │ Version: 35                                                                                    │
│  │ Digest: 5cSwQdZCtZ7oeV62XyBwKd2x7stkCzJjFxLJzwrAri1D                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 2492800                                                                          │
│    Computation Cost: 1000000                                                                      │
│    Storage Rebate: 978120                                                                         │
│    Non-refundable Storage Fee: 9880                                                               │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    KMoNQEFcpwvAFcmEmu5nMz9iKUSfBy6u4raunMU9N5B                                                    │
│    9Jhn9v3rt9xjwUU3qnhe2WWiY4Lp5RfXXWEecshXP6kK                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
----- Events ----
Array []
----- Object changes ----

Created Objects: 
 ┌──
 │ ObjectID: 0x86b76752f57a77b232ee033e04de11e0adb8ebc5fd2b2e1dcedc2d35e92bedbd
 │ Sender: 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 
 │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )
 │ ObjectType: 0x1d26b3043875fde33b18174b054a2610204572782373003b006f1eae4c3d9150::hello_world::HelloWorldObject 
 │ Version: 35
 │ Digest: CBvmHv1DdKFRkLk1A5iNd4dHHGzuaPR34tVHioUkpass
 └──

Mutated Objects: 
 ┌──
 │ ObjectID: 0x012caa4fdc1870f67c658d2e562f94775fae0c3b9cc92ca332782747c40bf0ae
 │ Sender: 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 
 │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 )
 │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI> 
 │ Version: 35
 │ Digest: 5cSwQdZCtZ7oeV62XyBwKd2x7stkCzJjFxLJzwrAri1D
 └──
----- Balance changes ----
 ┌──
 │ Owner: Account Address ( 0x35370841d2e69b495b1e2f944a3087e4242f314e503691a00b054e0ee2a45a73 ) 
 │ CoinType: 0x2::sui::SUI 
 │ Amount: -2514680
 └──

Code/sui/hello_world via 🅒 base took 3.2s 
➜ 
```

- <https://github.com/sui-foundation/sui-move-intro-course/issues/29>
- <https://suiexplorer.com/>
