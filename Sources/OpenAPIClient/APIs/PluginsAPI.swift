//
// PluginsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class PluginsAPI {

    /**
     Install a plugin
     
     - parameter addPluginRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addPlugin(addPluginRequest: AddPluginRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await addPluginWithRequestBuilder(addPluginRequest: addPluginRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Install a plugin
     - POST /api/v1/plugins/install
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter addPluginRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func addPluginWithRequestBuilder(addPluginRequest: AddPluginRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/plugins/install"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addPluginRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a plugin's public settings
     
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String: JSONValue]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1PluginsNpmNamePublicSettingsGet(npmName: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue] {
        return try await apiV1PluginsNpmNamePublicSettingsGetWithRequestBuilder(npmName: npmName, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a plugin's public settings
     - GET /api/v1/plugins/{npmName}/public-settings
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String: JSONValue]> 
     */
    open class func apiV1PluginsNpmNamePublicSettingsGetWithRequestBuilder(npmName: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String: JSONValue]> {
        var localVariablePath = "/api/v1/plugins/{npmName}/public-settings"
        let npmNamePreEscape = "\(APIHelper.mapValueToPathItem(npmName))"
        let npmNamePostEscape = npmNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{npmName}", with: npmNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: JSONValue]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get a plugin's registered settings
     
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String: JSONValue]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1PluginsNpmNameRegisteredSettingsGet(npmName: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue] {
        return try await apiV1PluginsNpmNameRegisteredSettingsGetWithRequestBuilder(npmName: npmName, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a plugin's registered settings
     - GET /api/v1/plugins/{npmName}/registered-settings
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String: JSONValue]> 
     */
    open class func apiV1PluginsNpmNameRegisteredSettingsGetWithRequestBuilder(npmName: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String: JSONValue]> {
        var localVariablePath = "/api/v1/plugins/{npmName}/registered-settings"
        let npmNamePreEscape = "\(APIHelper.mapValueToPathItem(npmName))"
        let npmNamePostEscape = npmNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{npmName}", with: npmNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: JSONValue]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set a plugin's settings
     
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiV1PluginsNpmNameSettingsPutRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1PluginsNpmNameSettingsPut(npmName: String, apiV1PluginsNpmNameSettingsPutRequest: ApiV1PluginsNpmNameSettingsPutRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await apiV1PluginsNpmNameSettingsPutWithRequestBuilder(npmName: npmName, apiV1PluginsNpmNameSettingsPutRequest: apiV1PluginsNpmNameSettingsPutRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set a plugin's settings
     - PUT /api/v1/plugins/{npmName}/settings
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiV1PluginsNpmNameSettingsPutRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1PluginsNpmNameSettingsPutWithRequestBuilder(npmName: String, apiV1PluginsNpmNameSettingsPutRequest: ApiV1PluginsNpmNameSettingsPutRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/plugins/{npmName}/settings"
        let npmNamePreEscape = "\(APIHelper.mapValueToPathItem(npmName))"
        let npmNamePostEscape = npmNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{npmName}", with: npmNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: apiV1PluginsNpmNameSettingsPutRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List available plugins
     
     - parameter search: (query)  (optional)
     - parameter pluginType: (query)  (optional)
     - parameter currentPeerTubeEngine: (query)  (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PluginResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAvailablePlugins(search: String? = nil, pluginType: Int? = nil, currentPeerTubeEngine: String? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PluginResponse {
        return try await getAvailablePluginsWithRequestBuilder(search: search, pluginType: pluginType, currentPeerTubeEngine: currentPeerTubeEngine, start: start, count: count, sort: sort, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List available plugins
     - GET /api/v1/plugins/available
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter search: (query)  (optional)
     - parameter pluginType: (query)  (optional)
     - parameter currentPeerTubeEngine: (query)  (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PluginResponse> 
     */
    open class func getAvailablePluginsWithRequestBuilder(search: String? = nil, pluginType: Int? = nil, currentPeerTubeEngine: String? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PluginResponse> {
        let localVariablePath = "/api/v1/plugins/available"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "search": (wrappedValue: search?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "pluginType": (wrappedValue: pluginType?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "currentPeerTubeEngine": (wrappedValue: currentPeerTubeEngine?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PluginResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a plugin
     
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Plugin
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPlugin(npmName: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Plugin {
        return try await getPluginWithRequestBuilder(npmName: npmName, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a plugin
     - GET /api/v1/plugins/{npmName}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Plugin> 
     */
    open class func getPluginWithRequestBuilder(npmName: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Plugin> {
        var localVariablePath = "/api/v1/plugins/{npmName}"
        let npmNamePreEscape = "\(APIHelper.mapValueToPathItem(npmName))"
        let npmNamePostEscape = npmNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{npmName}", with: npmNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Plugin>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List plugins
     
     - parameter pluginType: (query)  (optional)
     - parameter uninstalled: (query)  (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PluginResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPlugins(pluginType: Int? = nil, uninstalled: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PluginResponse {
        return try await getPluginsWithRequestBuilder(pluginType: pluginType, uninstalled: uninstalled, start: start, count: count, sort: sort, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List plugins
     - GET /api/v1/plugins
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter pluginType: (query)  (optional)
     - parameter uninstalled: (query)  (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PluginResponse> 
     */
    open class func getPluginsWithRequestBuilder(pluginType: Int? = nil, uninstalled: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PluginResponse> {
        let localVariablePath = "/api/v1/plugins"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pluginType": (wrappedValue: pluginType?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "uninstalled": (wrappedValue: uninstalled?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PluginResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Uninstall a plugin
     
     - parameter uninstallPluginRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uninstallPlugin(uninstallPluginRequest: UninstallPluginRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await uninstallPluginWithRequestBuilder(uninstallPluginRequest: uninstallPluginRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Uninstall a plugin
     - POST /api/v1/plugins/uninstall
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter uninstallPluginRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func uninstallPluginWithRequestBuilder(uninstallPluginRequest: UninstallPluginRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/plugins/uninstall"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uninstallPluginRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a plugin
     
     - parameter addPluginRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updatePlugin(addPluginRequest: AddPluginRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await updatePluginWithRequestBuilder(addPluginRequest: addPluginRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a plugin
     - POST /api/v1/plugins/update
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter addPluginRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func updatePluginWithRequestBuilder(addPluginRequest: AddPluginRequest? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/plugins/update"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addPluginRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
