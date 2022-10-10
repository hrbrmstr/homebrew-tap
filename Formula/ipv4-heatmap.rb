class Ipv4Heatmap < Formula
  desc "ipv4-heatmap — Generate IPv4 12th order Hilbert heatmaps from a file of IPv4 addresses."
  homepage "https://github.com/hrbrmstr/rust-ipv4heatmap"
  version "0.4.0"

  if OS.mac?
    url "https://github.com/hrbrmstr/rust-ipv4heatmap/releases/download/v0.5.0/ipv4-heatmap-macos-signed-universal-0.5.0.zip"
    sha256 "6c047f6fcf66783a6842a5d7632a70c8e95ae923f48d5574fcc71d05b43e95ae"
  end

  conflicts_with "ipv4-heatmap"

  def install
    bin.install "ipv4-heatmap"
  end

  test do
    system "#{bin}/ipv4-heatmap --version"
  end
end