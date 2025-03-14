//
// VideosAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class VideosAPI {

    /**
     Add a video in a playlist
     
     - parameter playlistId: (path) Playlist id 
     - parameter addVideoPlaylistVideoRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AddVideoPlaylistVideo200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addVideoPlaylistVideo(playlistId: Int, addVideoPlaylistVideoRequest: AddVideoPlaylistVideoRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AddVideoPlaylistVideo200Response {
        return try await addVideoPlaylistVideoWithRequestBuilder(playlistId: playlistId, addVideoPlaylistVideoRequest: addVideoPlaylistVideoRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add a video in a playlist
     - POST /api/v1/video-playlists/{playlistId}/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter playlistId: (path) Playlist id 
     - parameter addVideoPlaylistVideoRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AddVideoPlaylistVideo200Response> 
     */
    open class func addVideoPlaylistVideoWithRequestBuilder(playlistId: Int, addVideoPlaylistVideoRequest: AddVideoPlaylistVideoRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AddVideoPlaylistVideo200Response> {
        var localVariablePath = "/api/v1/video-playlists/{playlistId}/videos"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addVideoPlaylistVideoRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AddVideoPlaylistVideo200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter nsfw
     */
    public enum Nsfw_apiV1UsersMeSubscriptionsVideosGet: String, Sendable, CaseIterable {
        case _true = "true"
        case _false = "false"
    }

    /**
     * enum for parameter include
     */
    public enum Include_apiV1UsersMeSubscriptionsVideosGet: Int, Sendable, CaseIterable {
        case _0 = 0
        case _1 = 1
        case _2 = 2
        case _4 = 4
        case _8 = 8
        case _16 = 16
        case _32 = 32
    }

    /**
     * enum for parameter skipCount
     */
    public enum SkipCount_apiV1UsersMeSubscriptionsVideosGet: String, Sendable, CaseIterable {
        case _true = "true"
        case _false = "false"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_apiV1UsersMeSubscriptionsVideosGet: String, Sendable, CaseIterable {
        case name = "name"
        case duration = "-duration"
        case createdat = "-createdAt"
        case publishedat = "-publishedAt"
        case views = "-views"
        case likes = "-likes"
        case trending = "-trending"
        case hot = "-hot"
        case best = "-best"
    }

    /**
     List videos of subscriptions of my user
     
     - parameter categoryOneOf: (query) category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
     - parameter isLive: (query) whether or not the video is a live (optional)
     - parameter tagsOneOf: (query) tag(s) of the video (optional)
     - parameter tagsAllOf: (query) tag(s) of the video, where all should be present in the video (optional)
     - parameter licenceOneOf: (query) licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
     - parameter languageOneOf: (query) language id of the video (see [/videos/languages](#operation/getLanguages)). Use &#x60;_unknown&#x60; to filter on videos that don&#39;t have a video language (optional)
     - parameter host: (query) Find elements owned by this host (optional)
     - parameter autoTagOneOf: (query) **PeerTube &gt;&#x3D; 6.2** **Admins and moderators only** filter on videos that contain one of these automatic tags (optional)
     - parameter nsfw: (query) whether to include nsfw videos, if any (optional)
     - parameter isLocal: (query) **PeerTube &gt;&#x3D; 4.0** Display only local or remote objects (optional)
     - parameter include: (query) **Only administrators and moderators can use this parameter**  Include additional videos in results (can be combined using bitwise or operator) - &#x60;0&#x60; NONE - &#x60;1&#x60; NOT_PUBLISHED_STATE - &#x60;2&#x60; BLACKLISTED - &#x60;4&#x60; BLOCKED_OWNER - &#x60;8&#x60; FILES - &#x60;16&#x60; CAPTIONS - &#x60;32&#x60; VIDEO SOURCE  (optional)
     - parameter privacyOneOf: (query) **PeerTube &gt;&#x3D; 4.0** Display only videos in this specific privacy/privacies (optional)
     - parameter hasHLSFiles: (query) **PeerTube &gt;&#x3D; 4.0** Display only videos that have HLS files (optional)
     - parameter hasWebVideoFiles: (query) **PeerTube &gt;&#x3D; 6.0** Display only videos that have Web Video files (optional)
     - parameter skipCount: (query) if you don&#39;t need the &#x60;total&#x60; in the response (optional, default to ._false)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query)  (optional)
     - parameter excludeAlreadyWatched: (query) Whether or not to exclude videos that are in the user&#39;s video history (optional)
     - parameter search: (query) Plain text search, applied to various parts of the model depending on endpoint (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: VideoListResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1UsersMeSubscriptionsVideosGet(categoryOneOf: GetAccountVideosCategoryOneOfParameter? = nil, isLive: Bool? = nil, tagsOneOf: GetAccountVideosTagsOneOfParameter? = nil, tagsAllOf: GetAccountVideosTagsAllOfParameter? = nil, licenceOneOf: GetAccountVideosLicenceOneOfParameter? = nil, languageOneOf: GetAccountVideosLanguageOneOfParameter? = nil, host: String? = nil, autoTagOneOf: GetAccountVideosTagsAllOfParameter? = nil, nsfw: Nsfw_apiV1UsersMeSubscriptionsVideosGet? = nil, isLocal: Bool? = nil, include: Include_apiV1UsersMeSubscriptionsVideosGet? = nil, privacyOneOf: VideoPrivacySet? = nil, hasHLSFiles: Bool? = nil, hasWebVideoFiles: Bool? = nil, skipCount: SkipCount_apiV1UsersMeSubscriptionsVideosGet? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_apiV1UsersMeSubscriptionsVideosGet? = nil, excludeAlreadyWatched: Bool? = nil, search: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> VideoListResponse {
        return try await apiV1UsersMeSubscriptionsVideosGetWithRequestBuilder(categoryOneOf: categoryOneOf, isLive: isLive, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, host: host, autoTagOneOf: autoTagOneOf, nsfw: nsfw, isLocal: isLocal, include: include, privacyOneOf: privacyOneOf, hasHLSFiles: hasHLSFiles, hasWebVideoFiles: hasWebVideoFiles, skipCount: skipCount, start: start, count: count, sort: sort, excludeAlreadyWatched: excludeAlreadyWatched, search: search, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List videos of subscriptions of my user
     - GET /api/v1/users/me/subscriptions/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter categoryOneOf: (query) category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
     - parameter isLive: (query) whether or not the video is a live (optional)
     - parameter tagsOneOf: (query) tag(s) of the video (optional)
     - parameter tagsAllOf: (query) tag(s) of the video, where all should be present in the video (optional)
     - parameter licenceOneOf: (query) licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
     - parameter languageOneOf: (query) language id of the video (see [/videos/languages](#operation/getLanguages)). Use &#x60;_unknown&#x60; to filter on videos that don&#39;t have a video language (optional)
     - parameter host: (query) Find elements owned by this host (optional)
     - parameter autoTagOneOf: (query) **PeerTube &gt;&#x3D; 6.2** **Admins and moderators only** filter on videos that contain one of these automatic tags (optional)
     - parameter nsfw: (query) whether to include nsfw videos, if any (optional)
     - parameter isLocal: (query) **PeerTube &gt;&#x3D; 4.0** Display only local or remote objects (optional)
     - parameter include: (query) **Only administrators and moderators can use this parameter**  Include additional videos in results (can be combined using bitwise or operator) - &#x60;0&#x60; NONE - &#x60;1&#x60; NOT_PUBLISHED_STATE - &#x60;2&#x60; BLACKLISTED - &#x60;4&#x60; BLOCKED_OWNER - &#x60;8&#x60; FILES - &#x60;16&#x60; CAPTIONS - &#x60;32&#x60; VIDEO SOURCE  (optional)
     - parameter privacyOneOf: (query) **PeerTube &gt;&#x3D; 4.0** Display only videos in this specific privacy/privacies (optional)
     - parameter hasHLSFiles: (query) **PeerTube &gt;&#x3D; 4.0** Display only videos that have HLS files (optional)
     - parameter hasWebVideoFiles: (query) **PeerTube &gt;&#x3D; 6.0** Display only videos that have Web Video files (optional)
     - parameter skipCount: (query) if you don&#39;t need the &#x60;total&#x60; in the response (optional, default to ._false)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query)  (optional)
     - parameter excludeAlreadyWatched: (query) Whether or not to exclude videos that are in the user&#39;s video history (optional)
     - parameter search: (query) Plain text search, applied to various parts of the model depending on endpoint (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<VideoListResponse> 
     */
    open class func apiV1UsersMeSubscriptionsVideosGetWithRequestBuilder(categoryOneOf: GetAccountVideosCategoryOneOfParameter? = nil, isLive: Bool? = nil, tagsOneOf: GetAccountVideosTagsOneOfParameter? = nil, tagsAllOf: GetAccountVideosTagsAllOfParameter? = nil, licenceOneOf: GetAccountVideosLicenceOneOfParameter? = nil, languageOneOf: GetAccountVideosLanguageOneOfParameter? = nil, host: String? = nil, autoTagOneOf: GetAccountVideosTagsAllOfParameter? = nil, nsfw: Nsfw_apiV1UsersMeSubscriptionsVideosGet? = nil, isLocal: Bool? = nil, include: Include_apiV1UsersMeSubscriptionsVideosGet? = nil, privacyOneOf: VideoPrivacySet? = nil, hasHLSFiles: Bool? = nil, hasWebVideoFiles: Bool? = nil, skipCount: SkipCount_apiV1UsersMeSubscriptionsVideosGet? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_apiV1UsersMeSubscriptionsVideosGet? = nil, excludeAlreadyWatched: Bool? = nil, search: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<VideoListResponse> {
        let localVariablePath = "/api/v1/users/me/subscriptions/videos"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "categoryOneOf": (wrappedValue: categoryOneOf?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "isLive": (wrappedValue: isLive?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "tagsOneOf": (wrappedValue: tagsOneOf?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "tagsAllOf": (wrappedValue: tagsAllOf?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "licenceOneOf": (wrappedValue: licenceOneOf?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "languageOneOf": (wrappedValue: languageOneOf?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "host": (wrappedValue: host?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "autoTagOneOf": (wrappedValue: autoTagOneOf?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "nsfw": (wrappedValue: nsfw?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "isLocal": (wrappedValue: isLocal?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "privacyOneOf": (wrappedValue: privacyOneOf?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "hasHLSFiles": (wrappedValue: hasHLSFiles?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "hasWebVideoFiles": (wrappedValue: hasWebVideoFiles?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "skipCount": (wrappedValue: skipCount?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeAlreadyWatched": (wrappedValue: excludeAlreadyWatched?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "search": (wrappedValue: search?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoListResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List videos of my user
     
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: VideoListResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1UsersMeVideosGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> VideoListResponse {
        return try await apiV1UsersMeVideosGetWithRequestBuilder(start: start, count: count, sort: sort, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List videos of my user
     - GET /api/v1/users/me/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<VideoListResponse> 
     */
    open class func apiV1UsersMeVideosGetWithRequestBuilder(start: Int? = nil, count: Int? = nil, sort: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<VideoListResponse> {
        let localVariablePath = "/api/v1/users/me/videos"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoListResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get video imports of my user
     
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter targetUrl: (query) Filter on import target URL (optional)
     - parameter videoChannelSyncId: (query) Filter on imports created by a specific channel synchronization (optional)
     - parameter search: (query) Search in video names (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: VideoImportsList
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1UsersMeVideosImportsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, targetUrl: String? = nil, videoChannelSyncId: Double? = nil, search: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> VideoImportsList {
        return try await apiV1UsersMeVideosImportsGetWithRequestBuilder(start: start, count: count, sort: sort, targetUrl: targetUrl, videoChannelSyncId: videoChannelSyncId, search: search, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get video imports of my user
     - GET /api/v1/users/me/videos/imports
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter targetUrl: (query) Filter on import target URL (optional)
     - parameter videoChannelSyncId: (query) Filter on imports created by a specific channel synchronization (optional)
     - parameter search: (query) Search in video names (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<VideoImportsList> 
     */
    open class func apiV1UsersMeVideosImportsGetWithRequestBuilder(start: Int? = nil, count: Int? = nil, sort: String? = nil, targetUrl: String? = nil, videoChannelSyncId: Double? = nil, search: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<VideoImportsList> {
        let localVariablePath = "/api/v1/users/me/videos/imports"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "targetUrl": (wrappedValue: targetUrl?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "videoChannelSyncId": (wrappedValue: videoChannelSyncId?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "search": (wrappedValue: search?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoImportsList>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List videos of a playlist
     
     - parameter playlistId: (path) Playlist id 
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: VideoListResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getVideoPlaylistVideos(playlistId: Int, start: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> VideoListResponse {
        return try await getVideoPlaylistVideosWithRequestBuilder(playlistId: playlistId, start: start, count: count, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List videos of a playlist
     - GET /api/v1/video-playlists/{playlistId}/videos
     - parameter playlistId: (path) Playlist id 
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<VideoListResponse> 
     */
    open class func getVideoPlaylistVideosWithRequestBuilder(playlistId: Int, start: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<VideoListResponse> {
        var localVariablePath = "/api/v1/video-playlists/{playlistId}/videos"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoListResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
