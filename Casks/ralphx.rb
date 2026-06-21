cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.43.0"
  sha256 arm:   "11c9f68e8ea5081876e2f32a49a9760cb1ab54224c719fea26df6174e4589bc4",
         intel: "0e90c4d1f724592f94f58b5e48dbd49f1a3f95002cb9d9630bb867b74c287dd5"

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
