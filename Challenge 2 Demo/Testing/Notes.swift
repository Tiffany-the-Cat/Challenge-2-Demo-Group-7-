import Foundation

// How Codable Works. Master Structs or Functions are Chapter Titles.

/*
struct MainFunctions {
    // How to encode and decode variables.
    let testVar : Int = 0
    func toEncode() {
        if let codedData = try? JSONEncoder().encode(testVar) {
            let codedValue = String(data: codedData, encoding: .utf8) // in order of size: ASCII, utf8, unicode (accepts emojis!)
        }
    }
    func toDecode(codedData: Data) {
        // All encoded variables are of the type Data.
        // replace Int with any type, including Struct names. The method to define structs is listed below.
        do {
            let decodedData = try JSONDecoder().decode(Int.self, from: codedData)
        } catch {
            // there are more detailed forms of error handling but i currently don't gaf
            print("hello you got an error :)")
        }
    }
    // .utf8 is the type of data that goes into the JSON file, don't worry about it.
    // typically people would put something like encoder = JSONEncoder() for convenience. same for decoder.
}

struct DefiningStructsCertain {
    // To define a struct without error handling. Useful if you are not going to change anything in the JSON file between codings.
    struct StructName: Codable {
        let var1: Int
        let var2: String
        let manyWordVar: Double
        enum CodingKeys: String, CodingKey {
            case var1
            case var2 = "lol69" // THIS WORKS.
            case manyWordVar = "many_word_var"
        }
    }
    // var1 and var2 are stored automatically as "var1" and "var2" if you don't redefine them.
    // The enum is to overwrite the original CodingKeys. So long you use the same Struct to decode, it will read off your coding key names to match the values to the original variable names.
}

struct DefiningStructsUncertain {
    // To define a struct with error handling. Useful if you are going to screw around with the JSON file directly between decodings.
    struct StructName: Codable {
        let var1: Int
        let var2: String
        let manyWordVar: Double
        enum CodingKeys: String, CodingKey {
            case var1
            case var2
            case manyWordVar = "many_word_var"
        }
        init(from decoder: Decoder) throws {
            // container is the location of this Struct in the JSON file.
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.var1 = try container.decode(Int.self, forKey: .var1)
            self.var2 = try container.decode(String.self, forKey: .var2)
            self.manyWordVar = try container.decode(Double.self, forKey: .manyWordVar)
        }
    }
}
*/
