cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.54.0"
  sha256 arm:   "c8e6a23b2e1f2247f31de6145ec551210f31730cdef7789e370bce871ab19b45",
         intel: "ef0d6d32599dcadb104109b462a6fe0f55f0853874848a1d651c1dd8bfe4f305"

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
