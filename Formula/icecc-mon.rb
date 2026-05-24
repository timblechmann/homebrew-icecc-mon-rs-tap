class IceccMon < Formula
  desc "A lightweight TUI monitor for icecc distributed compilation"
  homepage "https://github.com/timblechmann/icecc-mon-rs"
  url "https://github.com/timblechmann/icecc-mon-rs/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0c0c76e0260b19d3993742cb7f64ad89ba5a644994509152b954199f7d99db1c"
  license "GPL-2.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"icecc-mon", "--help"
  end
end
