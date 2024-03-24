'use strict';

const persons = require('./person.json');

function search(searchKey, value) {
    const found = [];
    for(const person of persons) {
        if(person[searchKey] ==value){
            found.push(person);
        }
    }
    return found;

}

console.log(search('firstName', 'Mary'));console.log(search('lastName', 'River'));console.log(search('age', 30));
console.log('###########');

const age=40;
const result = search('age', 30);
if(result.length>0){
    console.log('persons age of 30');
    for (const person of result) {
        console.log(`Persons age of ${age}:`);
    }

} else {
    console.log(`No person of age ${age}`);
}