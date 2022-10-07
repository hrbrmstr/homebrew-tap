class KevPush < Formula
  desc "kev-push — Be notified whenever CISA updates their Known Exploited Vulnerabilities (KEV) Catalog."
  homepage "https://github.com/hrbrmstr/kev-push"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/kev-push/releases/download/v0.1.0/kev-push-0.1.0.zip"
    sha256 "1e0d72bb31558981b853dc1760e8386e112f65265140a6e8cf8e4b140b2a7609"
  end

  conflicts_with "kev-push"

  def install
    bin.install "kev-push"
  end

  test do
    system "true"
  end
end