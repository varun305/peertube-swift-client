//
// JobAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class JobAPI {

    /**
     Pause job queue
     
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1JobsPausePost(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await apiV1JobsPausePostWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Pause job queue
     - POST /api/v1/jobs/pause
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1JobsPausePostWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/jobs/pause"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Resume job queue
     
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1JobsResumePost(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await apiV1JobsResumePostWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Resume job queue
     - POST /api/v1/jobs/resume
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1JobsResumePostWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/jobs/resume"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter state
     */
    public enum State_getJobs: String, Sendable, CaseIterable {
        case empty = ""
        case active = "active"
        case completed = "completed"
        case failed = "failed"
        case waiting = "waiting"
        case delayed = "delayed"
    }

    /**
     * enum for parameter jobType
     */
    public enum JobType_getJobs: String, Sendable, CaseIterable {
        case activitypubFollow = "activitypub-follow"
        case activitypubHttpBroadcast = "activitypub-http-broadcast"
        case activitypubHttpFetcher = "activitypub-http-fetcher"
        case activitypubHttpUnicast = "activitypub-http-unicast"
        case email = "email"
        case videoTranscoding = "video-transcoding"
        case videoFileImport = "video-file-import"
        case videoImport = "video-import"
        case videosViewsStats = "videos-views-stats"
        case activitypubRefresher = "activitypub-refresher"
        case videoRedundancy = "video-redundancy"
        case videoLiveEnding = "video-live-ending"
        case videoChannelImport = "video-channel-import"
    }

    /**
     List instance jobs
     
     - parameter state: (path) The state of the job (&#39;&#39; for for no filter) 
     - parameter jobType: (query) job type (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GetJobs200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getJobs(state: State_getJobs, jobType: JobType_getJobs? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GetJobs200Response {
        return try await getJobsWithRequestBuilder(state: state, jobType: jobType, start: start, count: count, sort: sort, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List instance jobs
     - GET /api/v1/jobs/{state}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter state: (path) The state of the job (&#39;&#39; for for no filter) 
     - parameter jobType: (query) job type (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GetJobs200Response> 
     */
    open class func getJobsWithRequestBuilder(state: State_getJobs, jobType: JobType_getJobs? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GetJobs200Response> {
        var localVariablePath = "/api/v1/jobs/{state}"
        let statePreEscape = "\(state.rawValue)"
        let statePostEscape = statePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{state}", with: statePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "jobType": (wrappedValue: jobType?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetJobs200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
