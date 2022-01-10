/* 
This is the base class to represent the Covid Data. All of the classes depend on this class.  
*/
class CovidData {
    var countyFIPS: String = ""
    var County: String = ""
    var Name: String = ""
    var State: String = ""
    var stateFIPS: String = ""
    var Jan22Data: Int = 0
    var Jan23Data: Int = 0
    var Jan24Data: Int = 0
    var Jan25Data: Int = 0
    var Jan26Data: Int = 0
    var Jan27Data: Int = 0
    var Jan28Data: Int = 0
    var Jan29Data: Int = 0
    var Jan30Data: Int = 0
    var Jan31Data: Int = 0
    var Feb1Data: Int = 0
    var Feb2Data: Int = 0
    var Feb3Data: Int = 0
    var Feb4Data: Int = 0
    var Feb5Data: Int = 0
    var Feb6Data: Int = 0
    var Feb7Data: Int = 0
    var Feb8Data: Int = 0
    var Feb9Data: Int = 0
    var Feb10Data: Int = 0
    var Feb11Data: Int = 0
    var Feb12Data: Int = 0
    var Feb13Data: Int = 0
    var Feb14Data: Int = 0
    var Feb15Data: Int = 0
    var Feb16Data: Int = 0
    var Feb17Data: Int = 0
    var Feb18Data: Int = 0
    var Feb19Data: Int = 0
    var Feb20Data: Int = 0
    var Feb21Data: Int = 0
    var Feb22Data: Int = 0
    var Feb23Data: Int = 0
    var Feb24Data: Int = 0
    var Feb25Data: Int = 0
    var Feb26Data: Int = 0
    var Feb27Data: Int = 0
    var Feb28Data: Int = 0
    var Feb29Data: Int = 0
    var March1Data: Int = 0
    var March2Data: Int = 0
    var March3Data: Int = 0
    var March4Data: Int = 0
    var March5Data: Int = 0
    var March6Data: Int = 0
    var March7Data: Int = 0
    var March8Data: Int = 0
    var March9Data: Int = 0
    var March10Data: Int = 0
    var March11Data: Int = 0
    var March12Data: Int = 0
    var March13Data: Int = 0
    var March14Data: Int = 0
    var March15Data: Int = 0
    var March16Data: Int = 0
    var March17Data: Int = 0
    var March18Data: Int = 0
    var March19Data: Int = 0
    var March20Data: Int = 0
    var March21Data: Int = 0
    var March22Data: Int = 0
    var March23Data: Int = 0
    var March24Data: Int = 0
    var March25Data: Int = 0
    var March26Data: Int = 0
    var March27Data: Int = 0
    var March28Data: Int = 0
    var March29Data: Int = 0
    var March30Data: Int = 0
    var March31Data: Int = 0
    var April1Data: Int = 0
    var April2Data: Int = 0
    var April3Data: Int = 0
    var April4Data: Int = 0
    var April5Data: Int = 0
    var April6Data: Int = 0
    var April7Data: Int = 0
    var April8Data: Int = 0
    var April9Data: Int = 0
    var April10Data: Int = 0
    var April11Data: Int = 0
    var April12Data: Int = 0
    var April13Data: Int = 0
    var April14Data: Int = 0
    var April15Data: Int = 0
    var April16Data: Int = 0
    var April17Data: Int = 0
    var April18Data: Int = 0
    var April19Data: Int = 0
    var April20Data: Int = 0
    var April21Data: Int = 0
    var April22Data: Int = 0
    var April23Data: Int = 0
    var April24Data: Int = 0
    var April25Data: Int = 0
    var April26Data: Int = 0
    var April27Data: Int = 0
    var April28Data: Int = 0
    var April29Data: Int = 0
    var April30Data: Int = 0


/*
In the following lines of code, the functions calculate the average of each month in the county selected. 
*/

    func janMean(input1: CovidData) -> Int {
    return (input1.Jan22Data + input1.Jan23Data +  input1.Jan24Data + input1.Jan25Data + input1.Jan26Data + input1.Jan27Data + input1.Jan28Data + input1.Jan29Data + input1.Jan30Data + input1.Jan31Data)/10
  }

  func marchMean(input1: CovidData) -> Int {
    return (input1.March1Data + input1.March2Data + input1.March3Data + input1.March4Data + input1.March5Data + input1.March6Data + input1.March7Data + input1.March8Data + input1.March9Data + input1.March10Data + input1.March11Data + input1.March12Data + input1.March13Data + input1.March14Data + input1.March15Data + input1.March16Data + 
    input1.March17Data + input1.March18Data +
    input1.March18Data + input1.March19Data + input1.March20Data + input1.March21Data + input1.March22Data + input1.March23Data + input1.March24Data + input1.March25Data + input1.March26Data + input1.March27Data + 
    input1.March28Data + input1.March29Data +
    input1.March30Data + input1.March31Data)/31
  }

  func febMean(input1: CovidData) -> Int {
    return (input1.Feb1Data + input1.Feb2Data + input1.Feb3Data + input1.Feb4Data + input1.Feb5Data + input1.Feb6Data + input1.Feb7Data + input1.Feb8Data + input1.Feb9Data + input1.Feb10Data + input1.Feb11Data + input1.Feb12Data + input1.Feb13Data + input1.Feb14Data + input1.Feb15Data + input1.Feb16Data + input1.Feb17Data + input1.Feb18Data + input1.Feb19Data + input1.Feb20Data + input1.Feb21Data + input1.Feb22Data + input1.Feb23Data + input1.Feb24Data + input1.Feb25Data + input1.Feb26Data + input1.Feb27Data + input1.Feb28Data + input1.Feb29Data)/29
  }
  
  func aprilMean(input1: CovidData) -> Int {
    return (input1.April1Data + input1.April2Data + input1.April3Data + input1.April4Data + input1.April5Data + input1.April6Data + input1.April7Data + input1.April8Data + input1.April9Data + input1.April10Data + input1.April11Data + input1.April12Data + input1.April13Data + input1.April14Data + input1.April15Data + input1.April16Data + input1.April17Data + input1.April18Data + input1.April19Data + input1.April20Data + input1.April21Data + input1.April22Data + input1.April23Data + input1.April24Data + input1.April25Data + input1.April26Data + input1.April27Data + input1.April28Data + input1.April29Data + input1.April30Data)/30
  }

  func allMean(input1: CovidData) -> Int {
    return (input1.Jan22Data + input1.Jan23Data +  input1.Jan24Data + input1.Jan25Data + input1.Jan26Data + input1.Jan27Data + input1.Jan28Data + input1.Jan29Data + input1.Jan30Data + input1.Jan31Data + input1.Feb1Data + input1.Feb2Data + input1.Feb3Data + input1.Feb4Data + input1.Feb5Data + input1.Feb6Data + input1.Feb7Data + input1.Feb8Data + input1.Feb9Data + input1.Feb10Data + input1.Feb11Data + input1.Feb12Data + input1.Feb13Data + input1.Feb14Data + input1.Feb15Data + input1.Feb16Data + input1.Feb17Data + input1.Feb18Data + input1.Feb19Data + input1.Feb20Data + input1.Feb21Data + input1.Feb22Data + input1.Feb23Data + input1.Feb24Data + input1.Feb25Data + input1.Feb26Data + input1.Feb27Data + input1.Feb28Data + input1.Feb29Data + input1.March1Data + input1.March2Data + input1.March3Data + input1.March4Data + input1.March5Data + input1.March6Data + input1.March7Data + input1.March8Data + input1.March9Data + input1.March10Data + input1.March11Data + input1.March12Data + input1.March13Data + input1.March14Data + input1.March15Data + input1.March16Data + 
    input1.March17Data + input1.March18Data +
    input1.March18Data + input1.March19Data + input1.March20Data + input1.March21Data + input1.March22Data + input1.March23Data + input1.March24Data + input1.March25Data + input1.March26Data + input1.March27Data + 
    input1.March28Data + input1.March29Data +
    input1.March30Data + input1.March31Data + input1.April1Data + input1.April2Data + input1.April3Data + input1.April4Data + input1.April5Data + input1.April6Data + input1.April7Data + input1.April8Data + input1.April9Data + input1.April10Data + input1.April11Data + input1.April12Data + input1.April13Data + input1.April14Data + input1.April15Data + input1.April16Data + input1.April17Data + input1.April18Data + input1.April19Data + input1.April20Data + input1.April21Data + input1.April22Data + input1.April23Data + input1.April24Data + input1.April25Data + input1.April26Data + input1.April27Data + input1.April28Data + input1.April29Data + input1.April30Data)/100
  }

}