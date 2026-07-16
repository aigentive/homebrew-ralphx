cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.69.0"
  sha256 arm:   "bc10556786816d7c6a404cf7c7d05bc4d1ae1a2e5c222e20e81cbe33f0997383",
         intel: "6a0e63acb904c0fd5ab62aeebd368d952854cf34c06e35bf60e9cb79eb1c3fae"

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
