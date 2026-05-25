class IceccMon < Formula
  desc "Lightweight TUI monitor for icecc distributed compilation"
  homepage "https://github.com/timblechmann/icecc-mon-rs"
  url "https://github.com/timblechmann/icecc-mon-rs/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "207c9d4e5ef5bb8b418a3abd06bb3992347af4ae61595da89a2b219702ed2562"
  license "GPL-2.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"icecc-mon", "--help"
  end
end
