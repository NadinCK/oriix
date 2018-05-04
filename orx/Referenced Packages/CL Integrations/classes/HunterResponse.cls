/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class HunterResponse extends ints.IntegrationResponseObject {
    global Integer errorCount;
    global List<ints.HunterResponse.Error> errors;
    global String failure;
    global Integer matches;
    global String parsingErrors;
    global String rawRequest;
    global String rawResponse;
    global List<ints.HunterResponse.Rule> rules;
    global Integer schemeCount;
    global List<ints.HunterResponse.Scheme> schemes;
    global Integer scoreCount;
    global List<ints.HunterResponse.ScoreType> scoreTypes;
    global Integer totalMatchScore;
    global Integer totalRuleCount;
    global Integer warningCount;
    global List<ints.HunterResponse.Warning> warnings;
    global HunterResponse() {

    }
global class Error {
    global String errorMessage;
    global String errorNumber;
    global List<ints.HunterResponse.Value> errorValues;
    global Error() {

    }
}
global class Rule {
    global Integer isGlobal;
    global Integer ruleCount;
    global String ruleID;
    global Integer ruleScore;
    global Rule() {

    }
}
global class Scheme {
    global String schemeID;
    global Integer schemeScore;
    global Scheme() {

    }
}
global class ScoreType {
    global String currentVersion;
    global String name;
    global Integer scoreValue;
    global Integer valueCount;
    global ScoreType() {

    }
}
global class Value {
    global String value;
    global Value() {

    }
}
global class Warning {
    global String warningMessage;
    global String warningNumber;
    global List<ints.HunterResponse.Value> warningValues;
    global Warning() {

    }
}
}
