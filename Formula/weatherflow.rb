class Weatherflow < Formula
  desc "weatherflow — Basic WeatherFlow Tempest command line UDP receiver in Rust."
  homepage "https://github.com/hrbrmstr/weatherflow-rust"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/rust-weatherflow/releases/download/v0.2.0/weatherflow-macos-universal-signed-0.2.0.zip"
    sha256 "6de863ddd7f830c210073a094eac6729bf5a800d1b55714dbfdaef92823ba047"
  end

  conflicts_with "weatherflow"

  def install
    bin.install "weatherflow"
  end

  test do
    system "#{bin}/weatherflow --version"
  end
end