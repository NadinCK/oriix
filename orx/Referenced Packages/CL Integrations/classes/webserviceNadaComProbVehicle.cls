/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class webserviceNadaComProbVehicle {
    global webserviceNadaComProbVehicle() {

    }
global class AccessoryMultExcl_Struc {
    global String AccCode;
    global String AccMultExclCode;
    global AccessoryMultExcl_Struc() {

    }
}
global class AccessoryPakgIncl_Struc {
    global String AccCode;
    global String AccPakgInclCode;
    global AccessoryPakgIncl_Struc() {

    }
}
global class Accessory_Struc {
    global String AccCode;
    global String AccDesc;
    global Boolean IsAdded;
    global Boolean IsIncluded;
    global Decimal Loan;
    global Decimal Retail;
    global Decimal TradeIn;
    global Integer Uid;
    global Accessory_Struc() {

    }
}
global class AdjustedAccessories {
    global String AccCode;
    global String AccDesc;
    global AdjustedAccessories() {

    }
}
global class ArrayOfAccessoryMultExcl_Struc extends ints.IntegrationResponseObject {
    global List<ints.webserviceNadaComProbVehicle.AccessoryMultExcl_Struc> AccessoryMultExcl_Struc;
    global ArrayOfAccessoryMultExcl_Struc() {

    }
}
global class ArrayOfAccessoryPakgIncl_Struc extends ints.IntegrationResponseObject {
    global List<ints.webserviceNadaComProbVehicle.AccessoryPakgIncl_Struc> AccessoryPakgIncl_Struc;
    global ArrayOfAccessoryPakgIncl_Struc() {

    }
}
global class ArrayOfAccessory_Struc extends ints.IntegrationResponseObject {
    global List<ints.webserviceNadaComProbVehicle.Accessory_Struc> Accessory_Struc;
    global ArrayOfAccessory_Struc() {

    }
}
global class ArrayOfAdjustedAccessories {
    global List<ints.webserviceNadaComProbVehicle.AdjustedAccessories> AdjustedAccessories;
    global ArrayOfAdjustedAccessories() {

    }
}
global class ArrayOfLookup_Struc extends ints.IntegrationResponseObject {
    global List<ints.webserviceNadaComProbVehicle.Lookup_Struc> Lookup_Struc;
    global ArrayOfLookup_Struc() {

    }
}
global class ArrayOfMileageTable_Struc {
    global List<ints.webserviceNadaComProbVehicle.MileageTable_Struc> MileageTable_Struc;
    global ArrayOfMileageTable_Struc() {

    }
}
global class ArrayOfVehicle_Struc extends ints.IntegrationResponseObject {
    global List<ints.webserviceNadaComProbVehicle.Vehicle_Struc> Vehicle_Struc;
    global ArrayOfVehicle_Struc() {

    }
}
global class AuctionValue_Struc extends ints.IntegrationResponseObject {
    global ints.webserviceNadaComProbVehicle.ArrayOfAdjustedAccessories AccessoriesAdjustedList;
    global Integer AverageAdjustedAuctionValue;
    global String DateRange;
    global Integer HighAdjustedAuctionValue;
    global Integer LowAdjustedAuctionValue;
    global AuctionValue_Struc() {

    }
}
global class FloorValue_Struc extends ints.IntegrationResponseObject {
    global Decimal AdjustedAvgTradeIn;
    global Decimal AdjustedLoan;
    global Decimal AdjustedRetail;
    global Decimal AdjustedRoughTradeIn;
    global Decimal AdjustedTradeIn;
    global Integer Uid;
    global FloorValue_Struc() {

    }
}
global class Lookup_Struc {
    global Integer Code;
    global String Descr;
    global Lookup_Struc() {

    }
}
global class MileageTable_Struc {
    global Decimal AdjAmount;
    global Integer HighLevel;
    global Integer LowLevel;
    global Decimal RatePerMile;
    global MileageTable_Struc() {

    }
}
global class Mileage_Struc extends ints.IntegrationResponseObject {
    global Integer AverageMileage;
    global Integer Count;
    global Decimal MaxAmount;
    global ints.webserviceNadaComProbVehicle.ArrayOfMileageTable_Struc MileageTable;
    global Decimal MinAmount;
    global Mileage_Struc() {

    }
}
global class StandardValue_Struc extends ints.IntegrationResponseObject {
    global Decimal AvgTradeIn;
    global Decimal Loan;
    global Decimal Retail;
    global Decimal RoughTradeIn;
    global Decimal TradeIn;
    global Integer Uid;
    global StandardValue_Struc() {

    }
}
global class Value_Struc extends ints.IntegrationResponseObject {
    global Integer AveMileage;
    global Decimal AvgTradeIn;
    global Decimal Loan;
    global Decimal MileAdjAvgTradeIn;
    global Decimal MileAdjLoan;
    global Decimal MileAdjRetail;
    global Decimal MileAdjRoughTradeIn;
    global Decimal MileAdjTradeIn;
    global Decimal MileageAdj;
    global Decimal Msrp;
    global Decimal Retail;
    global Decimal RoughTradeIn;
    global Decimal TradeIn;
    global Integer Uid;
    global Value_Struc() {

    }
}
global class VehicleValue_Struc extends ints.IntegrationResponseObject {
    global Integer AveMileage;
    global Decimal AvgTradeIn;
    global Decimal AvgTradeInPlusVinAcc;
    global Decimal AvgTradeInPlusVinAccMileage;
    global Integer BodyCode;
    global String BodyDescr;
    global Decimal Loan;
    global Decimal LoanPlusVinAcc;
    global Decimal LoanPlusVinAccMileage;
    global Integer MakeCode;
    global String MakeDescr;
    global Decimal MileageAdj;
    global Decimal Msrp;
    global Decimal Retail;
    global Decimal RetailPlusVinAcc;
    global Decimal RetailPlusVinAccMileage;
    global Decimal RoughTradeIn;
    global Decimal RoughTradeInPlusVinAcc;
    global Decimal RoughTradeInPlusVinAccMileage;
    global Integer SeriesCode;
    global String SeriesDescr;
    global Decimal TradeIn;
    global Decimal TradeInPlusVinAcc;
    global Decimal TradeInPlusVinAccMileage;
    global Integer Uid;
    global Integer VehicleYear;
    global Integer Weight;
    global VehicleValue_Struc() {

    }
}
global class Vehicle_Struc extends ints.IntegrationResponseObject {
    global Integer BodyCode;
    global String BodyDescr;
    global Integer Gcw;
    global Integer Gvw;
    global Integer MakeCode;
    global String MakeDescr;
    global String MileageClass;
    global Integer SeriesCode;
    global String SeriesDescr;
    global Integer Uid;
    global Integer Weight;
    global Integer Year;
    global Vehicle_Struc() {

    }
}
global class getExperianAutoCheckReportResponse_element extends ints.IntegrationResponseObject {
    global String getExperianAutoCheckReportResult;
    global getExperianAutoCheckReportResponse_element() {

    }
}
global class getRegionByStateCodeResponse_element extends ints.IntegrationResponseObject {
    global Integer getRegionByStateCodeResult;
    global getRegionByStateCodeResponse_element() {

    }
}
global class getYearsResponse_element extends ints.IntegrationResponseObject {
    global ints.webserviceNadaComProbVehicle.ArrayOfLookup_Struc getYearsResult;
    global getYearsResponse_element() {

    }
}
global class pingResponse_element extends ints.IntegrationResponseObject {
    global Boolean pingResult;
    global pingResponse_element() {

    }
}
}
