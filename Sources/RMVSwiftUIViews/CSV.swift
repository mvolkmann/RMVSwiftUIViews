import Foundation

extension String: LocalizedError {
    // Allows String values to be thrown.
    public var errorDescription: String? { self }
}

private func parseCSV(csv: String) -> [[String]] {
    csv.split(separator: "\n").map { line in
        line.split(separator: ",").map { String($0) }
    }
}

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
