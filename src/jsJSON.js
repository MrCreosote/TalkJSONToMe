var printObj = function(object) {
    var output = '';
    for (var property in object) {
      output += property + ': ' + object[property]+ 
          ' (' + typeof(object[property]) + '); ';
    }
    return output
}

var repl = function(key, value) { //makes stringify return null, not quite sure why - expected it to make no difference
    if (isNaN(value)) {
        return NaN;
    }
    if (value == Number.POSITIVE_INFINITY) {
        return Number.POSITIVE_INFINITY;
    }
    if (value == Number.NEGATIVE_INFINITY) {
        return Number.NEGATIVE_INFINITY;
    }
    return value;
}

phantom.injectJs("./json_parseMore.js");
js = '{"Not a number": NaN, "To infinity etc": Infinity}';
console.log("Javascript testing: " + js);
j = {'Not a number': NaN, 'To infinity etc': Infinity};
console.log("JSON.stringify():");
console.log(JSON.stringify(j));
console.log("JSON.stringify() w/ replacer:")
console.log(JSON.stringify(j, repl));
console.log("JSON.parse(): ");
try {
    console.log(printObj(JSON.parse(js)));
} catch (err) {
    console.log(err);
}
console.log("JSON.parseMore(): ");
console.log(printObj(JSON.parseMore(js)));
phantom.exit();