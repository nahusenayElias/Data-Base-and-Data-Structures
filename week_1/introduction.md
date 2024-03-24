# Introduction

Data uses 0 and 1 but we have plenty of alphabets and numbers and characters. These are only possible with combination of different bits and by generating enough combinations we are able to form them all.

Text files - they are stored in bits, we have many bits to represent one letter.

Image formats - png, jpg, svg and so on ... are also written by somebody and unless we don't know the bits used to write these codes, we can't access these images.

## Storing data

1. Memory
- memory will be cleared on every boot/program start.
2. Disk
- for persistance. 

### Disk storage
- plain text files : hard to handle by programs.
- structured text files: can be used by different programs and are easy to access and manipulate.
  - Json
  - csv/tsv (Comma Separated Value/ Tab Separated Value) We can easily download this file and change it to json by using program.
  - xml (extensible markup language)(https://www.w3.org/XML/)
  - ini
  - svg (for images, xml file)
- Binary file
 - data in binary format
 - images
 - audio 
 - video.

 ### File signatures

 . Files have different codes that can be looked at the net. JS have for instance 'ca fe ba be'.
 . Unicode.org there are list of binary codes for every alphabets and characters.

## Plain text

```
Mary river
2004

Report


This year 2024 will be the beginning of new project. Designers ofthe new project Mary River and Matt Jones attended the launch ...  
```
This data is a perfectly normal text data for human comprehension and computers can't go through this and figure out or process it.

## Structured text

```
Report

Writter: Mary River
Year: 2004
```

## Better Solutions

```json
{
    "writer": {
        "firstName": "Mary",
        "lastName": "River"

    },
    "year": "2024",
    "type": "Report",
    "text": [
        "This year 2024 will be the beginning of", "new project. Designers of the", "new project Mary River and Matt Jones attended the launch ..."

    ]
}
```

### XML Documentation

```xml
<document>
   <writer>
   <firstName>Mary</firstName>
   <lastName>River</lastName>
   </writer>
   <year>2004</year>
   <type>Report</type>
   <text>
    This year 2024 will be the beginning of new project. Designers ofthe new project Mary River and Matt Jones attended the launch ...  
   </text>
   </document>
```

## Using Text Files As Data Storage

### JSON
```json
[
    {
        "firstName": "Mary",
        "lastName": "River",
        "age": 25
    },
     {
        "firstName": "Matt",
        "lastName": "Jones",
        "age": 30
    }
    
]
```

### XML 

```xml
<person>
    <person>
        <firstName>Mary</firstName>
        <lastName>River</lastName>
        <age>25</age>
   </person>
   <person>
        <firstName>Matt</firstName>
        <lastName>Jones</lastName>
        <age>30</age>
   </person>
</person>
```

### CSV

```csv
firstName,lastName,age
Mary,River,25
Matt,Jones,30
```

Or

```csv
"firstName","lastName","age"
"Mary","River",25,
"Matt","Jones",31
```

### ini
In JSON you cant have comment and in 'ini' you can. Usually used for config info. 

```ini
;this is comment.
[database]
driver=mysql
host=localhost
port=3306
databasename=persondb
[user]
username=zeke
```