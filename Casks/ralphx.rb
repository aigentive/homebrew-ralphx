cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.34.3"
  sha256 arm:   "7964c083a353648fed2b5e377d34acda5cf6a90e2572af28fda6c14cbd763089",
         intel: "c4380914a9126a5ecb25a8259db5971240b21c2638b7729ad53e6f94e8f537e4"

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
