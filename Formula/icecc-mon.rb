class IceccMon < Formula
  desc "Lightweight TUI monitor for icecc distributed compilation"
  homepage "https://github.com/timblechmann/icecc-mon-rs"
  url "https://github.com/timblechmann/icecc-mon-rs/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "5d84f826ebe23c80c4ce10b82219b88d8339b72113ca657c63b7481d34c78aaa"
  license "GPL-2.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"icecc-mon", "--help"
  end
end
