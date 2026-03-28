Bot cvars and the snowbot.cfg file.
======================================

To tailor the Bot for your use, you can change the Bot cvars that are stored in the snowbot.cfg file, which works like and other Half-Life config file.  The different cvars are shown below:

Standard Gameplay
-----------------

bot_number    - Default number of bots [0 to 32]
bot_skill     - Bot skill level [0 to 100]
bot_skill_aa  - Bot skill level auto adjust [0 - off, 1 - on]
bot_jump      - Bot jumping modifier [0 to 100]
bot_chat      - Bot chat modifier [0 to 100]
bot_speed     - Bot movement speed [0 to ???]

Example file:
=============

//
// This line is a comment
//
echo "snowbot.cfg Loaded"
//
// Default number of bots [0 to 32]
bot_number 8
//
// Bot skill level [0 to 100]
bot_skill 50
//
// Bot skill level auto adjust [0 - off, 1 - on]
bot_skill_aa 0
//
// Bot jumping modifer [0 to 100]
bot_jump 50
//
// Bot chat modifier [0 to 100]
bot_chat 50
//
// Bot movement speed
bot_speed 300
