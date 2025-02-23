//
// VideoSource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoSource: Sendable, Codable, JSONEncodable, Hashable {

    /** Deprecated in 6.1, use inputFilename instead */
    @available(*, deprecated, message: "This property is deprecated.")
    public var filename: String?
    /** Uploaded/imported filename */
    public var inputFilename: String?
    /** **PeerTube >= 6.1** If enabled by the admin, the video source file is kept on the server and can be downloaded by the owner */
    public var fileDownloadUrl: String?
    public var resolution: VideoResolutionConstant?
    /** **PeerTube >= 6.1** Video file size in bytes */
    public var size: Int?
    /** **PeerTube >= 6.1** Frames per second of the video file */
    public var fps: Double?
    /** **PeerTube >= 6.1** Video stream width */
    public var width: Double?
    /** **PeerTube >= 6.1** Video stream height */
    public var height: Double?
    public var createdAt: Date?

    public init(filename: String? = nil, inputFilename: String? = nil, fileDownloadUrl: String? = nil, resolution: VideoResolutionConstant? = nil, size: Int? = nil, fps: Double? = nil, width: Double? = nil, height: Double? = nil, createdAt: Date? = nil) {
        self.filename = filename
        self.inputFilename = inputFilename
        self.fileDownloadUrl = fileDownloadUrl
        self.resolution = resolution
        self.size = size
        self.fps = fps
        self.width = width
        self.height = height
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filename
        case inputFilename
        case fileDownloadUrl
        case resolution
        case size
        case fps
        case width
        case height
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(filename, forKey: .filename)
        try container.encodeIfPresent(inputFilename, forKey: .inputFilename)
        try container.encodeIfPresent(fileDownloadUrl, forKey: .fileDownloadUrl)
        try container.encodeIfPresent(resolution, forKey: .resolution)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(fps, forKey: .fps)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}

