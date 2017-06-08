JSON Helper Node for Roku.

Source files: [`/components/Helpers/`](/components/Helpers/)

Usage:
```brightscript
json = {
  "people": [
    {
      "name": "John Appleseed",
      "yob": 1999,
      "phones": [
        {
          "name": "Nokia 3310",
          "year_of_purchase": 2000
        },
        {
          "name": "Nokia 3311",
          "year_of_purchase": 2001
        }
      ]
    },
    {
      "name": "John Appleseed Jr.",
      "yob": 2017,
      "phones": []
    }
  ]
}

jsonHelper = createObject("RoSGNode", "JSONHelper")
value = jsonHelper.callFunc("get", {json: json, path: ["people", 0, "phones", 1, "name"]}).value
? "first person's second phone name: "; value
invalidValue = jsonHelper.callFunc("get", {json: json, path: ["people", 1, "phones", 1, "name"]}).value
? "second person's second phone name: "; invalidValue
```
