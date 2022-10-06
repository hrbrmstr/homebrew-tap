class Archinfo < Formula
  desc "archinfo — list running processes and the architecture they are running under"
  homepage "https://github.com/hrbrmstr/archinfo"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/archinfo/releases/download/v0.4.0/archinfo-0.4.0-darwin-arm64.zip"
    sha256 "88a08ac95e30ecd090cb1ac3c92f0e682463b3fd8b1b3dddb39170929f99f2d9"
  end

  conflicts_with "archinfo"

  def install
    bin.install "archinfo"
  end

  test do
    system "#{bin}/archinfo -h"
  end
end