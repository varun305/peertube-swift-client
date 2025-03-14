//
// VideoRatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class VideoRatesAPI {

    /**
     Get rate of my user for a video
     
     - parameter videoId: (path) The video id 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GetMeVideoRating
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1UsersMeVideosVideoIdRatingGet(videoId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GetMeVideoRating {
        return try await apiV1UsersMeVideosVideoIdRatingGetWithRequestBuilder(videoId: videoId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get rate of my user for a video
     - GET /api/v1/users/me/videos/{videoId}/rating
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter videoId: (path) The video id 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GetMeVideoRating> 
     */
    open class func apiV1UsersMeVideosVideoIdRatingGetWithRequestBuilder(videoId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GetMeVideoRating> {
        var localVariablePath = "/api/v1/users/me/videos/{videoId}/rating"
        let videoIdPreEscape = "\(APIHelper.mapValueToPathItem(videoId))"
        let videoIdPostEscape = videoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{videoId}", with: videoIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetMeVideoRating>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Like/dislike a video
     
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter xPeertubeVideoPassword: (header) Required on password protected video (optional)
     - parameter apiV1VideosIdRatePutRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1VideosIdRatePut(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil, apiV1VideosIdRatePutRequest: ApiV1VideosIdRatePutRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await apiV1VideosIdRatePutWithRequestBuilder(id: id, xPeertubeVideoPassword: xPeertubeVideoPassword, apiV1VideosIdRatePutRequest: apiV1VideosIdRatePutRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Like/dislike a video
     - PUT /api/v1/videos/{id}/rate
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter xPeertubeVideoPassword: (header) Required on password protected video (optional)
     - parameter apiV1VideosIdRatePutRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1VideosIdRatePutWithRequestBuilder(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil, apiV1VideosIdRatePutRequest: ApiV1VideosIdRatePutRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/videos/{id}/rate"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: apiV1VideosIdRatePutRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "x-peertube-video-password": xPeertubeVideoPassword?.encodeToJSON(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
