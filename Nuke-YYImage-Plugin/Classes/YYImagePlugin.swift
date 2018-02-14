
import Foundation
import Nuke

public class YYImagePlugin: NSObject {
    
    public static let manager: Nuke.Manager = {
        let dataDecoder = Nuke.DataDecoder()
        let yyimageDataDecoder = YYImageDataDecoder()
        let decoder = Nuke.DataDecoderComposition(decoders: [yyimageDataDecoder, dataDecoder])
        let loader = Nuke.Loader(loader: DataLoader(), decoder: decoder)
        return Nuke.Manager(loader: loader)
    }()
    
}

public struct YYImageDataDecoder: Nuke.DataDecoding {
    
    public init() {
    }
    
    public func decode(data: Data, response: URLResponse) -> Image? {
        if !data.isWebPFormat {
            return nil
        }
        return decodeWebPData(data)
    }
    
    internal func decodeWebPData(_ webpData: Data) -> Image? {
        return WebPImageDecoder.decode(webpData)
    }
}

// MARK: - WebP Format Testing
extension Data {
    // Borrow from KingfisherWebp
    // https://github.com/Yeatse/KingfisherWebP/blob/master/KingfisherWebP/Classes/Image%2BWebP.swift#L38
    var isWebPFormat: Bool {
        if count < 12 {
            return false
        }
        
        let endIndex = index(startIndex, offsetBy: 12)
        let testData = subdata(in: startIndex..<endIndex)
        guard let testString = String(data: testData, encoding: .ascii) else {
            return false
        }
        
        if testString.hasPrefix("RIFF") && testString.hasSuffix("WEBP") {
            return true
        } else {
            return false
        }
    }
}
