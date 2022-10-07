class Sl2json < Formula
  desc "sl2json — Standalone program to convert Lowrance SL2 files to ndjson."
  homepage "https://github.com/hrbrmstr/sl2json"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/sl2json/releases/download/v0.1.0/sl2json-macos-universal-signed-0.1.0.zip"
    sha256 "65dbdd15244eac83a92eb07b400d7f41dbb84576af5a50fec6fe80e2b8be5ca4"
  end

  conflicts_with "sl2json"

  def install
    bin.install "sl2json"
  end

  test do
    system "#{bin}/sl2json"
  end
end