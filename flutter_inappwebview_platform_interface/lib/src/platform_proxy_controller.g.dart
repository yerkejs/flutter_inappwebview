// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_proxy_controller.dart';

// **************************************************************************
// ExchangeableObjectGenerator
// **************************************************************************

class IOSProxySettings {
  /// A Boolean that indicates whether or not a proxy configuration allows failover to non-proxied connections.
  /// Failover isn’t allowed by default.
  bool allowFailover;
  List<String> excludedDomains;
  List<String> matchDomains;

  ///Proxy is a string in the format `[scheme://]host[:port]`.
  ///Scheme is optional, if present must be `HTTP`, `HTTPS` or [SOCKS](https://tools.ietf.org/html/rfc1928) and defaults to `HTTP`.
  String proxyUrl;
  IOSProxySettings(
      {this.allowFailover = false,
      this.excludedDomains = const [],
      this.matchDomains = const [],
      this.proxyUrl = ''});

  ///Gets a possible [IOSProxySettings] instance from a [Map] value.
  static IOSProxySettings? fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    final instance = IOSProxySettings();
    instance.allowFailover = map['allowFailover'];
    instance.excludedDomains =
        List<String>.from(map['excludedDomains']!.cast<String>());
    instance.matchDomains =
        List<String>.from(map['matchDomains']!.cast<String>());
    instance.proxyUrl = map['proxyUrl'];
    return instance;
  }

  ///Converts instance to a map.
  Map<String, dynamic> toMap() {
    return {
      "allowFailover": allowFailover,
      "excludedDomains": excludedDomains,
      "matchDomains": matchDomains,
      "proxyUrl": proxyUrl,
    };
  }

  ///Converts instance to a map.
  Map<String, dynamic> toJson() {
    return toMap();
  }

  ///Returns a copy of IOSProxySettings.
  IOSProxySettings copy() {
    return IOSProxySettings.fromMap(toMap()) ?? IOSProxySettings();
  }

  @override
  String toString() {
    return 'IOSProxySettings{allowFailover: $allowFailover, excludedDomains: $excludedDomains, matchDomains: $matchDomains, proxyUrl: $proxyUrl}';
  }
}

class AndroidProxySettings {
  ///List of bypass rules.
  ///
  ///A bypass rule describes URLs that should skip proxy override settings and make a direct connection instead. These can be URLs or IP addresses. Wildcards are accepted.
  ///For instance, the rule "*example.com" would mean that requests to "http://example.com" and "www.example.com" would not be directed to any proxy,
  ///instead, would be made directly to the origin specified by the URL.
  List<String> bypassRules;

  ///Hostnames without a period in them (and that are not IP literals) will skip proxy settings and be connected to directly instead. Examples: `"abc"`, `"local"`, `"some-domain"`.
  ///
  ///Hostnames with a trailing dot are not considered simple by this definition.
  bool? bypassSimpleHostnames;

  ///List of scheme filters.
  ///
  ///URLs that match these scheme filters are connected to directly instead of using a proxy server.
  List<String> directs;

  ///List of proxy rules to be used for all URLs. This method can be called multiple times to add multiple rules. Additional rules have decreasing precedence.
  ///
  ///Proxy is a string in the format `[scheme://]host[:port]`.
  ///Scheme is optional, if present must be `HTTP`, `HTTPS` or [SOCKS](https://tools.ietf.org/html/rfc1928) and defaults to `HTTP`.
  ///Host is one of an IPv6 literal with brackets, an IPv4 literal or one or more labels separated by a period.
  ///Port number is optional and defaults to `80` for `HTTP`, `443` for `HTTPS` and `1080` for `SOCKS`.
  ///
  ///The correct syntax for hosts is defined by [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3.2.2).
  List<ProxyRule> proxyRules;

  ///By default, certain hostnames implicitly bypass the proxy if they are link-local IPs, or localhost addresses.
  ///For instance hostnames matching any of (non-exhaustive list):
  ///- localhost
  ///- *.localhost
  ///- [::1]
  ///- 127.0.0.1/8
  ///- 169.254/16
  ///- [FE80::]/10
  ///Set this to `true` to override the default behavior and force localhost and link-local URLs to be sent through the proxy.
  bool? removeImplicitRules;

  ///Reverse the bypass list.
  ///
  ///The default value is `false`, in which case all URLs will use proxy settings except the ones in the bypass list, which will be connected to directly instead.
  ///
  ///If set to `true`, then only URLs in the bypass list will use these proxy settings, and all other URLs will be connected to directly.
  ///
  ///Use [bypassRules] to add bypass rules.
  ///
  ///**NOTE**: available only if [WebViewFeature.PROXY_OVERRIDE_REVERSE_BYPASS] feature is supported.
  bool reverseBypassEnabled;
  AndroidProxySettings(
      {this.bypassRules = const [],
      this.bypassSimpleHostnames,
      this.directs = const [],
      this.proxyRules = const [],
      this.removeImplicitRules,
      this.reverseBypassEnabled = false});

  ///Gets a possible [AndroidProxySettings] instance from a [Map] value.
  static AndroidProxySettings? fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    final instance = AndroidProxySettings(
      bypassSimpleHostnames: map['bypassSimpleHostnames'],
      removeImplicitRules: map['removeImplicitRules'],
    );
    instance.bypassRules =
        List<String>.from(map['bypassRules']!.cast<String>());
    instance.directs = List<String>.from(map['directs']!.cast<String>());
    instance.proxyRules = List<ProxyRule>.from(map['proxyRules']
        .map((e) => ProxyRule.fromMap(e?.cast<String, dynamic>())!));
    instance.reverseBypassEnabled = map['reverseBypassEnabled'];
    return instance;
  }

  ///Converts instance to a map.
  Map<String, dynamic> toMap() {
    return {
      "bypassRules": bypassRules,
      "bypassSimpleHostnames": bypassSimpleHostnames,
      "directs": directs,
      "proxyRules": proxyRules.map((e) => e.toMap()).toList(),
      "removeImplicitRules": removeImplicitRules,
      "reverseBypassEnabled": reverseBypassEnabled,
    };
  }

  ///Converts instance to a map.
  Map<String, dynamic> toJson() {
    return toMap();
  }

  ///Returns a copy of AndroidProxySettings.
  AndroidProxySettings copy() {
    return AndroidProxySettings.fromMap(toMap()) ?? AndroidProxySettings();
  }

  @override
  String toString() {
    return 'AndroidProxySettings{bypassRules: $bypassRules, bypassSimpleHostnames: $bypassSimpleHostnames, directs: $directs, proxyRules: $proxyRules, removeImplicitRules: $removeImplicitRules, reverseBypassEnabled: $reverseBypassEnabled}';
  }
}
