cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.1"
  sha256 arm:   "cae56c57bcb0f07f884df58edb047769344411701c808883e28f12812918af77",
         intel: "9b96ea6326e7da3a4140a1e3340806b8aed83b794c50581c551e5ed3e85c3420"

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
