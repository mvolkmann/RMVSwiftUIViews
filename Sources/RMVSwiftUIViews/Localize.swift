import Foundation

public func message() throws -> String {
    let filePath = Bundle.module.path(forResource: "message", ofType: "txt")
    guard let filePath else { throw "file not found" }
    let line = try String(contentsOfFile: filePath)
    return line.trimmingCharacters(in: .whitespacesAndNewlines)
}
