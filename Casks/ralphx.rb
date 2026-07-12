cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.65.0"
  sha256 arm:   "e779845d3079521a6c9746bc326a25dfbf8d36255a39a639181976d0748ad459",
         intel: "f9d9788378c86783441cc388d437064118cd9283770617603c196ed4ee9dd9fb"

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
