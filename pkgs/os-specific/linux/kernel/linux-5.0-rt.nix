{ stdenv, fetchurl, hostPlatform, buildPackages, perl, buildLinux, ... } @ args:

buildLinux (args // rec {
  kversion = "5.0.14";
  pversion = "rt9";
  version = "${kversion}-${pversion}";
  extraMeta.branch = "5.0";

  src = fetchurl {
    url = "mirror://kernel/linux/kernel/v5.x/linux-${kversion}.tar.xz";
    sha256 = "2e376076cf8a20c0f86fa30fc56a9ca35cadbe43908cd24b7d678f97f3676c61";
  };
} // (args.argsOverride or {}))
