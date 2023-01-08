import Foundation

/// Parses a CSV string into an Array of Arrays of Strings.
/// - Parameter csv: a String of CSV data containing newline characters and commas
/// - Returns: an Array of Arrays of Strings
private func parseCSV(csv: String) -> [[String]] {
    csv.split(separator: "\n").map { line in
        line.split(separator: ",").map { String($0) }
    }
}

/// Parses a CSV file into an Array of Arrays of Strings.
/// - Parameter fileName: a file name that can be found in the app bundle such as "data.csv"
/// - Throws: if the provided file name does not contain a single period or the file cannot be found
/// - Returns: an Array of Arrays of Strings
/// - Returns:
public func parseCSV(fileName: String) throws -> [[String]] {
    let parts = fileName.split(separator: ".")
    guard parts.count == 2 else { throw "invalid fileName" }
    let filePath = Bundle.module.path(
        forResource: String(parts[0]),
        ofType: String(parts[1])
    )
    guard let filePath else { throw "file not found" }
    let contents = try String(contentsOfFile: filePath)
    return parseCSV(csv: contents)
}
