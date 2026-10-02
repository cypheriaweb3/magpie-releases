cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.652"
  sha256 arm:   "c27df34b023c3ec6a6802feda9a295d7106ff4560b8cbd684fa13b5bdc8f8d29",
         intel: "3d4ad8853cd166985d01606a06fa180bef544b93022047e5e9c664d462b237c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
