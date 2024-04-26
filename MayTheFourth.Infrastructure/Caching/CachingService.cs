using Microsoft.Extensions.Caching.Distributed;

namespace MayTheFourth.Infrastructure.Caching;

public class CachingService(IDistributedCache cache) : ICachingService
{
    private readonly DistributedCacheEntryOptions _options = new();

    public async Task SetAsync(string key, string value)
    {
        await cache.SetStringAsync(key, value, _options);
    }

    public async Task<string?> GetAsync(string key)
    {
        return await cache.GetStringAsync(key);
    }
}