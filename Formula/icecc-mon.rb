class IceccMon < Formula
  desc "A lightweight TUI monitor for icecc distributed compilation"
  homepage "https://github.com/timblechmann/icecc-mon-rs"
  url "https://github.com/timblechmann/icecc-mon-rs/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "8c7dc11f4fe472ddc4310d0102462430ddcd2c24772ad60bc687eef56b2f92d2"
  license "GPL-2.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"icecc-mon", "--help"
  end
end
