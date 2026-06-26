cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.48.0"
  sha256 arm:   "34c552c456560dff863f0b9067e91b6a5a0af8526995c4c3b74f8e90129ddf30",
         intel: "ec21ee28e270dbbafb377fbc457559653c9d8ae8f53cbf08e682026798df6956"

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
