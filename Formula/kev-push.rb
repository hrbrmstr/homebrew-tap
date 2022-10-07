class Kevpush < Formula
  desc "kev-push — Be notified whenever CISA updates their Known Exploited Vulnerabilities (KEV) Catalog."
  homepage "https://github.com/hrbrmstr/kev-push"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/kev-push/releases/download/v0.1.0/kev-push-0.1.0.zip"
    sha256 "c8521ec04fa893833a4837b19c625ea666044090a115f07a6e1871ce4bbf6b93"
  end

  conflicts_with "kev-push"

  def install
    bin.install "kev-push"
  end

  test do
    system "true"
  end
end