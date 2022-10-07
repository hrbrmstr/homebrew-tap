class Weatherkit < Formula
  desc "weatherkit — Command line Apple WeatherKit REST API weather conditions and hourly/daily foreacast utility."
  homepage "https://github.com/hrbrmstr/weatherkit-rust"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/weatherkit-rust/releases/download/v0.3.0/weatherkit-0.3.0.zip"
    sha256 "f99fba38a2ec412a87ce6af5387aa2658e6976b512e9c3701f4b0368a1c1f65b"
  end

  conflicts_with "weatherkit"

  def install
    bin.install "weatherkit"
  end

  test do
    system "#{bin}/weatherkit --version"
  end
end