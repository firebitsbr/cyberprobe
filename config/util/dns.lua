--
-- Utility for looking up dns information
--


local module = {}



module.class_name = {}
module.class_name[1] = "IN"
module.class_name[2] = "CS"
module.class_name[3] = "CH"
module.class_name[4] = "HS"

module.type_name = {}
module.type_name[1] = "A"
module.type_name[2] = "NS"
module.type_name[2] = "NS"
module.type_name[3] = "MD"
module.type_name[4] = "MF"
module.type_name[5] = "CNAME"
module.type_name[6] = "SOA"
module.type_name[7] = "MB"
module.type_name[8] = "MG"
module.type_name[9] = "MR"
module.type_name[10] = "NULL"
module.type_name[11] = "WKS"
module.type_name[12] = "PTR"
module.type_name[13] = "HINFO"
module.type_name[14] = "MINFO"
module.type_name[15] = "MX"
module.type_name[16] = "TXT"
module.type_name[17] = "RP"
module.type_name[18] = "AFSDB"
module.type_name[19] = "X25"
module.type_name[20] = "ISDN"
module.type_name[21] = "RT"
module.type_name[22] = "NSAP"
module.type_name[23] = "NSAP-PTR"
module.type_name[24] = "SIG"
module.type_name[25] = "KEY"
module.type_name[26] = "PX"
module.type_name[27] = "GPOS"
module.type_name[28] = "AAAA"
module.type_name[29] = "LOC"
module.type_name[31] = "EID"
module.type_name[32] = "NIMLOC"
module.type_name[33] = "SRV"
module.type_name[34] = "ATMA"
module.type_name[35] = "NAPTR"
module.type_name[36] = "KX"
module.type_name[37] = "CERT"
module.type_name[39] = "DNAME"
module.type_name[40] = "SINK"
module.type_name[41] = "OPT"
module.type_name[42] = "APL"
module.type_name[43] = "DS"
module.type_name[44] = "SSHFP"
module.type_name[45] = "IPSECKEY"
module.type_name[46] = "RRSIG"
module.type_name[47] = "NSEC"
module.type_name[48] = "DNSKEY"
module.type_name[49] = "DHCID"
module.type_name[50] = "NSEC3"
module.type_name[51] = "NSEC3PARAM"
module.type_name[52] = "TLSA"
module.type_name[55] = "HIP"
module.type_name[59] = "CDS"
module.type_name[60] = "CDNSKEY"
module.type_name[99] = "SPF"
module.type_name[100] = "UINFO"
module.type_name[101] = "UID"
module.type_name[102] = "GID"
module.type_name[103] = "UNSPEC"
module.type_name[249] = "TKEY"
module.type_name[250] = "TSIG"
module.type_name[251] = "IXFR"
module.type_name[252] = "AXFR"
module.type_name[254] = "MAILA"
module.type_name[256] = "URI"
module.type_name[257] = "CAA"
module.type_name[32768] = "TA"
module.type_name[32769] = "DLV"


return module