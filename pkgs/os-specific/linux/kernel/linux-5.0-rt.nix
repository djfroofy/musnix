{ stdenv, fetchurl, hostPlatform, buildPackages, perl, buildLinux, ... } @ args:

buildLinux (args // rec {
  kversion = "5.0.19";
  pversion = "rt11";
  version = "${kversion}-${pversion}";
  extraMeta.branch = "5.0";

  src = fetchurl {
    url = "mirror://kernel/linux/kernel/v5.x/linux-${kversion}.tar.xz";
    sha256 = "0bf0d5c64dafc1184e9aafd2f3ebb77aa88ddee881a7766436258feaa214d9ec";
  };
} // (args.argsOverride or {}))
