class Oh2quarto < Formula
  desc "oh2quarto — Save an Observable HQ Notebook to a Quarto project."
  homepage "https://github.com/hrbrmstr/ohq2quarto"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hrbrmstr/ohq2quarto/releases/download/v0.2.0/ohq2quarto-0.2.0.zip"
    sha256 "2855f89d70d2241c50f1a29c54e5b0a10f074d1e002e5c3e336e780a021138c4"
  end

  conflicts_with "oh2quarto"

  def install
    bin.install "oh2quarto"
  end

  test do
    system "#{bin}/oh2quarto --version"
  end
end