class IceccMon < Formula
  desc "A lightweight TUI monitor for icecc distributed compilation"
  homepage "https://github.com/timblechmann/icecc-mon-rs"
  url "https://github.com/timblechmann/icecc-mon-rs/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "ca2b6b2d38495bdbe96069dd33c2d867c44a1572adc7aaac04de9134af113b9a"
  license "GPL-2.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"icecc-mon", "--help"
  end
end
