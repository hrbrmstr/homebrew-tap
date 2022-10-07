class Ipv4Heatmap < Formula
  desc "ipv4-heatmap — Generate IPv4 12th order Hilbert heatmaps from a file of IPv4 addresses."
  homepage "https://github.com/hrbrmstr/rust-ipv4heatmap"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/rust-ipv4heatmap/releases/download/v0.5.0/ipv4-heatmap-macos-signed-universal-0.5.0.zip"
    sha256 "31031525a515d9b92b6cc5c9e8618795c8f06e0d508509b6d5b638a6312558c8"
  end

  conflicts_with "ipv4-heatmap"

  def install
    bin.install "ipv4-heatmap"
  end

  test do
    system "#{bin}/ipv4-heatmap --version"
  end
end