
--------- Using Bots in Snow-War ----------

Using Bots in Snow-war is simple. Just start a game, and type "addbot" in the console window.  Or you can set the number of bots by typing "bot_number ##", where ## is the maximum number of bots you want in the game.  You can also fix the number of bots by editing the bots/cfg/snowbot.cfg file to set maximum number of bots you want in your game.


To customize the Bot, see below.

------------ Customization FAQ -------------

How do I set Rho-Bot's default parameters?

The rhobot.cfg file in your /rhobot/cfg/ directory contains the Rho-Bot's default settings.  If you want to alter the default settings, simply open rhobot.cfg in your favorite text editor (e.g. NotePad, WordPad, etc.) and change the values.

You may also change the cvars on a per-map basis.  At the beginning of each map, Snow-war will attempt to execute the map/mapname.cfg file, where mapname is the current map name.  That way, if you wan to play boot_camp with 16 bots, but only use 12 on crossfire, there is no need to manually do this during the game.

---

How do I configure bot personalities?
 
The /bots/bot_cfg/ directory contains .cfg files. A .cfg file specifies the specific characteristics for your unique bot. You may create or edit as many .cfg files as you want. I recommend you make copies of the example.cfg file, change the name to ThisBotsName.cfg and just fill in your own data (again using your favorite text editor) when creating your customized Bots. 

---

How do I change which bot personalities join my game?
 
The botcycle.txt file in your /bots/ directory functions just as mapcycle.txt does, except you specify which Bots are added to the game, as opposed to maps. For instance, suppose I just created a Thresh.cfg file which I placed in the /bots/bot_cfg/ directory. The name of the bot is 'Thresh', so if I want Thresh to be the very first bot added into the game I simply add the words 'Thresh' to the top of botcycle.txt and walaa-alakazaam, Thresh will be the first Bot to join your game.

---

---------- Other Bot commands ----------

Player commands

1.  addbot - this adds a bot.  If playing on a dedicated server, this command is disabled.

2.  removebot "botname" - this command removes a bot named "botname". The quotes are necessary.
    If playing on a dedicated server, this command is disabled.

3.  removebots - this command removes all bots.  If playing on a dedicated server,
    this command is disabled.

Server commands

1.  bot addbot - this adds a bot.

2.  bot "removebot botname" - this command removes a bot named "botname". The quotes are necessary.

3.  bot removebots - this command removes all bots.

For additional Rho-Bot cvars,  see the rhobot/cfg/readme.txt file.
