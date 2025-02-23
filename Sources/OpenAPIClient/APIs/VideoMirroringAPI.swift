//
// VideoMirroringAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class VideoMirroringAPI {

    /**
     Delete a mirror done on a video
     
     - parameter redundancyId: (path) id of an existing redundancy on a video 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func delMirroredVideo(redundancyId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await delMirroredVideoWithRequestBuilder(redundancyId: redundancyId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a mirror done on a video
     - DELETE /api/v1/server/redundancy/videos/{redundancyId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter redundancyId: (path) id of an existing redundancy on a video 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func delMirroredVideoWithRequestBuilder(redundancyId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/server/redundancy/videos/{redundancyId}"
        let redundancyIdPreEscape = "\(APIHelper.mapValueToPathItem(redundancyId))"
        let redundancyIdPostEscape = redundancyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{redundancyId}", with: redundancyIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter target
     */
    public enum Target_getMirroredVideos: String, Sendable, CaseIterable {
        case myVideos = "my-videos"
        case remoteVideos = "remote-videos"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getMirroredVideos: String, Sendable, CaseIterable {
        case name = "name"
    }

    /**
     List videos being mirrored
     
     - parameter target: (query) direction of the mirror 
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort abuses by criteria (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [VideoRedundancy]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMirroredVideos(target: Target_getMirroredVideos, start: Int? = nil, count: Int? = nil, sort: Sort_getMirroredVideos? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [VideoRedundancy] {
        return try await getMirroredVideosWithRequestBuilder(target: target, start: start, count: count, sort: sort, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List videos being mirrored
     - GET /api/v1/server/redundancy/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter target: (query) direction of the mirror 
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort abuses by criteria (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[VideoRedundancy]> 
     */
    open class func getMirroredVideosWithRequestBuilder(target: Target_getMirroredVideos, start: Int? = nil, count: Int? = nil, sort: Sort_getMirroredVideos? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[VideoRedundancy]> {
        let localVariablePath = "/api/v1/server/redundancy/videos"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "target": (wrappedValue: target.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[VideoRedundancy]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Mirror a video
     
     - parameter putMirroredVideoRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func putMirroredVideo(putMirroredVideoRequest: PutMirroredVideoRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await putMirroredVideoWithRequestBuilder(putMirroredVideoRequest: putMirroredVideoRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Mirror a video
     - POST /api/v1/server/redundancy/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter putMirroredVideoRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func putMirroredVideoWithRequestBuilder(putMirroredVideoRequest: PutMirroredVideoRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/server/redundancy/videos"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: putMirroredVideoRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
