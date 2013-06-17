while (true){
  var inputer = prompt("Say something");
  if (inputer.length === 0){
    console.log("Fine, be that way");
  }else if (inputer.search(/\?$/) > 0){
    console.log("Sure");
  }else if (inputer === inputer.toUpperCase()){
    console.log("Woah, chill out")
  }else {
    console.log("Whatever");
  }
}
