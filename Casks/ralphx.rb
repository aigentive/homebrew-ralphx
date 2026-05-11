cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.3"
  sha256 arm:   "d3b7f01e4ba397103c12f3bd192745c7099b26e5c0fb64c19ac3710690edf492",
         intel: "be606e8e3e23ea65ceb8c9702e31326e32930fae95cf79fcd914a64d9a35dd99"

  url "https://github.com/aigentive/ralphx.app/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx.app"
  auto_updates true

  depends_on formula: "node"
  depends_on macos: ">= :ventura"

  app "RalphX.app"

  caveats do
    <<~EOS
      Install at least one supported AI harness CLI after install.
      RalphX can update itself in-app after install.
      To force a Homebrew-managed refresh, run: brew upgrade --cask ralphx
    EOS
  end
end
