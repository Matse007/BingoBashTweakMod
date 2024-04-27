var bingoList = [];

bingoList[1] = [
  { name: "Open 3 Different Vaults in Mafia Town(Golden Included)", types: [""] },
  { name: "Get Hookshot", types: ["badge"] },
  { name: "Kiss or “bleh” a total of 5 unique NPCs", types: [""] },
];
bingoList[2] = [
  { name: "Heating Up Mafia Town Without Dying", types: ["act"] },
  { name: "Get the hot-air balloon yarn without using the Ice Hat platform", types: [""] },
];
bingoList[3] = [
  { name: "Kill a Shock Squid" , types: [""] },
];
bingoList[4] = [
  { name: "Selfie at the top of the Subcon Tree", types: ["selfie"] },
  { name: "Take a selfie with a cheese", types: ["selfie"] },
];
bingoList[5] = [
  { name: "Complete the Moon Rift", types: ["act"] },
  { name: "Complete Train Rush with >100 seconds remaining" , types: ["act"] },
  { name: "Selfie with the Snatcher Coin on top of Manor", types: ["relic"] },
];
bingoList[6] = [
    { name: "Blame yourself in Murder", types: ["act"] },
    { name: "Complete Pipe and Village Rifts", types: ["rift"] },
    { name: "Selfie with 2 Snatcher Coins", types: ["selfie"] },
];
bingoList[7] = [
    { name: "Collect 6 Rift Tokens", types: ["relic"] },
    { name: "Talk to the Camera Tourist at all of his base game locations", types: ["etc"] },
    { name: "Collect all DJ Grooves tokens in Picture Perfect", types: ["rift"] },
];
bingoList[8] = [
    { name: "Complete Cheating the Race" , types: ["act"] },
    { name: "Rack up 500'000 in fines", types: ["act"] },
    { name: "Enter 4 snatcher traps in subcon", types: ["act"] },

];
bingoList[9] = [
  { name: "Get 5 TP’s in Birds", types: ["act"] },
  { name: "Take down the green fire wall", types: ["etc"] },
];
bingoList[10] = [
  { name: "Obtain All TP's in Mafia Town", types: ["act"] },
  { name: "Complete Fake Award Ceremony", types: ["act"] },
  { name: "Clear 2 Purple Rifts", types: ["rift"] },
];
bingoList[11] = [
  { name: "Collect All Storybook Pages in Any Purple Rift", types: ["rift"] },
  { name: "Buy 2 Badges", types: ["badge"] },
  { name: "Craft Dweller Mask", types: ["hat"] },
];
bingoList[12] = [
  { name: "Obtain All TP's in Subcon", types: ["act"] },
  { name: "Get 3 Boss Time Pieces", types: ["boss"] },
  { name: "Craft 4 Relics", types: ["relic"] },
];
bingoList[13] = [
  { name: "Kill 3 or more enemies with a single Projectile Badge lasers", types: ["badge"] },
  { name: "2 Time Pieces from each non-DLC chapter", types: ["timepiece"] },
  { name: "Complete 2 Alpine Peaks", types: ["alpine"] },
];
bingoList[14] = [
  { name: "Get birdhouse relic", types: ["alpine"] },
   { name: "Work your way back to the Metro intro area", types: ["metro"] },
  { name: "Buy No Bonk Badge", types: ["tp"] },
];
bingoList[15] = [
  { name: "Complete Curly Tail Trail Rift", types: ["alpine"] },
  { name: "Get 3 TP’s in Alpine", types: ["alpine"] },
  { name: "Smack the rumbi in Rumbi Factory’s office", types: ["rift"] },

];
bingoList[16] = [
  { name: "Open Metro", types: ["metro"] },
  { name: "Collect 5 normal stickers in Metro", types: ["etc"] },
  { name: "Purchase any item from 4[c] different Metro merchants", types: ["etc"] },
];
bingoList[17] = [
  { name: "Beat any finale excluding fake finale", types: ["boss"] },
  { name: "Kill the Toilet of Doom", types: ["boss"] },
  { name: "Complete The Big Parade", types: ["act"] },
];
bingoList[18] = [
   { name: "Complete Bluefin Station", types: ["metro"] },
  { name: "Take a picture of the jello on Green Clean with a filter", types: ["selfie"] },
  { name: "Collect 32 Yarn in total", types: ["yarn"] },
  { name: "Clear 2 Purple Rifts", types: ["rift"] },
];
bingoList[19] = [
  { name: "Get the Rumbi Factory speedrun trophy", types: ["rift"] },
  { name: "Obtain 5 TP's in Metro", types: ["metro"] },
  { name: "Defeat any boss without taking damage", types: [""] },
];
bingoList[20] = [
 { name: "Complete Rush Hour", types: ["metro"] },
 { name: "Complete the Pink Paw Manhole Wowza Tunnel", types: ["metro"] },
  { name: "Defeat Snatcher", types: ["boss"] },
];
bingoList[21] = [
  { name: "Open Arctic Cruise", types: ["cruise"] },
  { name: "Selfie with the Egg Seal", types: ["selfie"] },
  { name: "Reach the Bon Voyage easter egg", types: ["cruise"] },
];
bingoList[22] = [
 { name: "Complete Finale (You can quitout)", types: ["act"] },
 { name: "Complete Beat the Heat (DW)", types: ["dw"] },
];
bingoList[23] = [
  { name: "Equip the Mirror / Projectile / Scooter badge at the same time", types: ["badge"] },
  { name: "Kill all UFO then grab the time piece in SYBFOS in 65 seconds or less[e]", types: ["dw"] },
];
bingoList[24] = [
  { name: "Beat Wound up Windmill", types: ["DW"] },

];
bingoList[25] = [
  { name: "Kill all UFO then grab the time piece in SYBFOS in 65 seconds or less[e]", types: ["dw"] },
  { name: "Beat one EX Boss", types: ["dw"] },
];

$(function() { srl.bingo(bingoList, 5); });