class FishSweeper < ActionController::Caching::Sweeper
  observe Fish
  
  def after_create(fish)
    expire_cache_for(fish)
  end
  
  def after_update(fish)
    expire_cache_for(fish)
  end
  
  def after_destroy(fish)
    expire_cache_for(fish)
  end
  
  private

  def expire_cache_for(fish)
    expire_page(:controller => 'fish', :action => 'index')
    expire_fragment('all_available_fish')
  end
end
