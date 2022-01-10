import Foundation

/*
I independently created this code as part of my AP Computer Science Principles exam.

The COVID-19 cases from each county in the United States data was found from here: 

https://raw.githubusercontent.com/jeffcore/covid-19-usa-by-state/master/COVID-19-Cases-USA-By-County.csv

The raw data by county from NYT (https://github.com/nytimes/covid-19-data)is organized by daily rows of date, county, state, values. This repo takes the daily data and combines all the data into two csv files (confirmed cases and deaths). Daily data is cumulative counts, not new cases/deaths per day.

Rows: FIPS, County, State
Columns: Date

Now, this is the main program and the starting point for the project. This program loads the CSV file as an input and creates multiple lists of COVID-19 cases by month based on counties in the state of Massachusetts. It then takes user input for which county they want detailed details on and gives the response for that county for a certain number of months. 
*/

/*
This function reads data from a CSV file. 
Argument 1: fileName
Argument 2: fileType
Return Type: String
Function Name: readDataFromCSV
*/
func readDataFromCSV(fileName:String, fileType: String)-> String{
        guard let filepath = Bundle.main.path(forResource: fileName, ofType: fileType)
            else {
                return ""
        }
        do {
            let contents = try String(contentsOfFile: filepath, encoding: .utf8)
            return contents
        } catch {
            print("File Read Error for file \(filepath)")
            return ""
        }
    }

/*
This function converts string to a string array that is a collection. 
Argument 1: data
Return Type: A collection of string arrays
Function Name: csv
*/
func csv(data: String) -> [[String]] {
  if data == "" {
    print("Data is not initialized. This program will now terminate.")
    return [[]]
  }
  if data == nil {
    print("Data is not initialized. This program will now terminate.")
    return [[]]
  }
    var result: [[String]] = []
    let rows = data.components(separatedBy: "\n")
    for row in rows {
        let columns = row.components(separatedBy: ",")
        result.append(columns)
    }
    return result
}

//The main program starts here:

let datafetched = readDataFromCSV(fileName: "test", fileType: ".csv")
let csvRows = csv(data: datafetched)
if csvRows == [[]] {
  print("Data is not initialized. This program will now terminate.")
  exit(0)
}
if csvRows == nil {
  print("Data is not initialized. This program will now terminate.")
  exit(0)
}
//Creating an instance of the class: CovidData
var covidData = CovidData()

//Creating an instance of the class: Barnstable
var barnstable = Barnstable() //1241
barnstable = barnstable.populateData(input1: barnstable, input2: csvRows)

//Creating an instance of the class: Middlesex
var middlesex = Middlesex() //1241
middlesex = middlesex.populateData(input1: middlesex, input2: csvRows)


//Creating an instance of the class: Berkshire
var berkshire = Berkshire() 
berkshire = berkshire.populateData(input1: berkshire, input2: csvRows)

//Creating an instance of the class: Bristol
var bristol = Bristol()
bristol = bristol.populateData(input1:bristol, input2: csvRows)

//Creating an instance of the class: Dukes
var dukes = Dukes()
dukes = dukes.populateData(input1: dukes, input2: csvRows)

//Creating an instance of the class: Essex
var essex = Essex()
essex = essex.populateData(input1:essex, input2: csvRows)

//Creating an instance of the class: Franklin
var franklin = Franklin()
franklin = franklin.populateData(input1: franklin, input2: csvRows)

//Creating an instance of the class: Hampton
var hampton = Hampton()
hampton = hampton.populateData(input1: hampton, input2: csvRows)

//Creating an instance of the class: Hampshire
var hampshire = Hampshire()
hampshire = hampshire.populateData(input1:hampshire, input2: csvRows)

//Creating an instance of the class: Nantucket
var nantucket = Nantucket()
nantucket = nantucket.populateData(input1:nantucket, input2: csvRows)

//Creating an instance of the class: Norfolk
var norfolk = Norfolk()
norfolk = norfolk.populateData(input1:norfolk, input2: csvRows)

//Creating an instance of the class: Plymouth
var plymouth = Plymouth()
plymouth = plymouth.populateData(input1: plymouth, input2: csvRows)

//Creating an instance of the class: Suffolk
var suffolk = Suffolk()
suffolk = suffolk.populateData(input1: suffolk, input2: csvRows)

//Creating an instance of the class: Worcester
var worcester = Worcester()
worcester = worcester.populateData(input1: worcester, input2: csvRows) 

/*
This function displays a list of commands the user can choose from. 
Function Name: displayCommands
*/
func displayCommands() {
  print("\n*****COMMANDS*****")
  print("0: exit the system")
  print("1: print these commands")
  print("2: More information about Barnstable County")
  print("3: More information about Berkshire County")
  print("4: More information about Bristol County")
  print("5: More information about Dukes County")
  print("6: More information about Essex County")
  print("7: More information about Franklin County")
  print("8: More information about Hampshire County")
  print("9: More information about Hampton County")
  print("10: More information about Middlesex County")
  print("11: More information about Nantucket County")
  print("12: More information about Norfolk County")
  print("13: More information about Plymouth County")
  print("14: More information about Suffolk County")
  print("15: More information about Worcester County")
  print("***************\n")
}

/*
This function retrieves the data for a specifc month and calculates and prints the average for each month and all months. 
Argument 1: in1
Function Name: printDetails
*/
func printDetails(in1: CovidData) {
  print("JANUARY Avg. per day: \(in1.janMean(input1: in1))")
  print("FEBRUARY Avg. per day: \(in1.febMean(input1: in1))")
  print("MARCH Avg. per day: \(in1.marchMean(input1: in1))")
  print("APRIL Avg. per day: \(in1.aprilMean(input1: in1))")
  print("ALL MONTHS Avg. per day: \(in1.allMean(input1: in1))")
}

/*
This function is a welcome message to the user. 
Function Name: welcomeMessage
*/
func welcomeMessage() {
print("Hello! This is the COVID-19 Data for all the counties in the state of Massachusetts. Below you will press a number corrosponding to the county you would like to view.")

print("*****************************")
}

/*
This function gets user input recursively in a loop multiple times until the user presses "0". 
Return Type: Int
Function Name: getCommand
*/
func getCommand() -> Int {
  print("please enter an option from the list of commands", terminator: " -> ")
  var input = readLine()!
  /*
  this checks if the input by the user is between 0 and 15.
  If the input is not between 0 and 15, it prints INVALID COMMAND and waits
  for an input from the user
  */
  while Int(input) != 0 {
    switch Int(input) {
      case 1: displayCommands()
      case 2: printDetails(in1: barnstable)
      case 3: printDetails(in1: berkshire)
      case 4: printDetails(in1: bristol)
      case 5: printDetails(in1: dukes)
      case 6: printDetails(in1: essex)
      case 7: printDetails(in1: franklin)
      case 8: printDetails(in1: hampshire)
      case 9: printDetails(in1: hampton)
      case 10: printDetails(in1: middlesex)
      case 11: printDetails(in1: nantucket)
      case 12: printDetails(in1: norfolk)
      case 13: printDetails(in1: plymouth)
      case 14: printDetails(in1: suffolk)
      case 15: printDetails(in1: worcester)
      default: print("INVALID COMMAND")
    }
    print("**************************")
    print("please enter an option from the list of commands", terminator: " -> ")
    input = readLine()!
  }
  print("\n...exiting...the...system...\n")

    
  return Int(input)!
  }



welcomeMessage()
displayCommands()
getCommand()