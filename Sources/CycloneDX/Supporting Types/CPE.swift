/// Define the format for acceptable CPE URIs.
/// Supports CPE 2.2 and CPE 2.3 formats.
/// Refer to https://nvd.nist.gov/products/cpe for official specification.
///
/// ```
/// pattern = ([c][pP][eE]:/[AHOaho]?(:[A-Za-z0-9\._\-~%]*){0,6})|(cpe:2\.3:[aho\*\-](:(((\?*|\*?)([a-zA-Z0-9\-\._]|(\\[\\\*\?!"#$$%&'\(\)\+,/:;<=>@\[\]\^`\{\|}~]))+(\?*|\*?))|[\*\-])){5}(:(([a-zA-Z]{2,3}(-([a-zA-Z]{2}|[0-9]{3}))?)|[\*\-]))(:(((\?*|\*?)([a-zA-Z0-9\-\._]|(\\[\\\*\?!"#$$%&'\(\)\+,/:;<=>@\[\]\^`\{\|}~]))+(\?*|\*?))|[\*\-])){4})
/// ```
///
public typealias CommonPlatformEnumerationURI = String

public typealias CPE = CommonPlatformEnumerationURI
