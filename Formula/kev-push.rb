class KevPush < Formula
  desc "kev-push — Be notified whenever CISA updates their Known Exploited Vulnerabilities (KEV) Catalog."
  homepage "https://github.com/hrbrmstr/kev-push"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/kev-push/releases/download/v0.1.0/kev-push-0.1.0.zip"
    sha256 "8d62ff1ee70d1bf16ec0a38509951bd87b5ed6833a08201c51e9ecb110c70e0d"
  end

  conflicts_with "kev-push"

  def install
    bin.install "kev-push"
  end

  test do
    system "true"
  end
end